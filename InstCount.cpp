//===-- InstCount.cpp - Collects the count of all instructions ------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This pass collects the count of all instructions and reports them
//
//===----------------------------------------------------------------------===//

#include "llvm/Analysis/Passes.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/InstVisitor.h"
#include "llvm/Pass.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/ErrorHandling.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

#define DEBUG_TYPE "instcount"

STATISTIC(TotalInsts , "Number of instructions (of all types)");
STATISTIC(TotalBlocks, "Number of basic blocks");
STATISTIC(BlockLow, "Number of BB's with less than 15 instructions");
STATISTIC(BlockMid, "Number of BB's with instructions between [15, 500]");
STATISTIC(BlockHigh, "Number of BB's with more than 500 instructions"); 
STATISTIC(TotalFuncs , "Number of non-external functions");
STATISTIC(TotalMemInst, "Number of memory instructions");
STATISTIC(BeginPhi, "# of Phi-nodes at beginning of BB");
STATISTIC(ArgsPhi, "Total arguments to Phi nodes");
STATISTIC(BBNoPhi, "# of BB's with no Phi nodes");
STATISTIC(BB03Phi, "# of BB's with Phi node # in range (0, 3]");
STATISTIC(BBHiPhi, "# of BB's with more than 3 Phi nodes");
STATISTIC(BBNumArgsHi, "# of BB where total args for phi nodes > 5");
STATISTIC(BBNumArgsLo, "# of BB where total args for phi nodes is [1, 5]");
STATISTIC(testUnary, "Unary");
STATISTIC(binaryConstArg, "Binary operations with a constant operand");
STATISTIC(callLargeNumArgs, "# of calls with number of arguments > 4");
STATISTIC(returnInt, "# of calls that return an int");
#define HANDLE_INST(N, OPCODE, CLASS) \
  STATISTIC(Num ## OPCODE ## Inst, "Number of " #OPCODE " insts");

#include "llvm/IR/Instruction.def"


namespace {
  class InstCount : public FunctionPass, public InstVisitor<InstCount> {
    friend class InstVisitor<InstCount>;

    void visitFunction  (Function &F) { ++TotalFuncs; }
    void visitBasicBlock(BasicBlock &BB) { ++TotalBlocks; 
	unsigned tempCount = 0;
	bool isFirst = true;
	unsigned phiCount = 0;
	unsigned BBArgs = 0;
	for (Instruction &I : BB) {
		for (int i = 0 ; i < I.getNumOperands(); i++) {
			Value* v = I.getOperand(i);
		} 
		if (isa<CallInst>(I)) {
			//CallInst cI = cast<CallInst>(I);
			if (cast<CallInst>(I).getNumArgOperands() > 4) {
				callLargeNumArgs++;
			} 
			if (cast<CallInst>(I).getCalledFunction()->getReturnType()->isIntegerTy()) {
				returnInt++;
			}
		}
		if (isa<UnaryInstruction>(I)){
			testUnary++;
		}
		if (isa<BinaryOperator>(I)) {
			if (isa<Constant>(I.getOperand(0)) || isa<Constant>(I.getOperand(1))) { 
			binaryConstArg++;

			}	
		}
		if (isFirst && isa<PHINode>(I)) {
			BeginPhi++;
		}
		if (isa<PHINode>(I)) {
			phiCount++;
			unsigned inc = cast<PHINode>(I).getNumIncomingValues();
			ArgsPhi += inc;
			BBArgs += inc;
		}			
		isFirst = false;
		tempCount++;
	}
	if (phiCount == 0) {
		BBNoPhi++;
	} else if (phiCount <= 3) {
		BB03Phi++;
	} else {
		BBHiPhi++;
	}
	if (BBArgs > 5) {
		BBNumArgsHi++;
	} else if (BBArgs>=1) {
		BBNumArgsLo++;
	}
	if (tempCount <15) {
		BlockLow++;
	} else if (tempCount <= 500) {
		BlockMid++;
	} else {
		BlockHigh++;
	}
    }

#define HANDLE_INST(N, OPCODE, CLASS) \
    void visit##OPCODE(CLASS &) { ++Num##OPCODE##Inst; ++TotalInsts; }

#include "llvm/IR/Instruction.def"

    void visitInstruction(Instruction &I) {
      errs() << "Instruction Count does not know about " << I;
      llvm_unreachable(nullptr);
    }
  public:
    static char ID; // Pass identification, replacement for typeid
    InstCount() : FunctionPass(ID) {
      initializeInstCountPass(*PassRegistry::getPassRegistry());
    }

    bool runOnFunction(Function &F) override;

    void getAnalysisUsage(AnalysisUsage &AU) const override {
      AU.setPreservesAll();
    }
    void print(raw_ostream &O, const Module *M) const override {}

  };
}

char InstCount::ID = 0;
INITIALIZE_PASS(InstCount, "instcount",
                "Counts the various types of Instructions", false, true)

FunctionPass *llvm::createInstCountPass() { return new InstCount(); }

// InstCount::run - This is the main Analysis entry point for a
// function.
//
bool InstCount::runOnFunction(Function &F) {
  unsigned StartMemInsts =
    NumGetElementPtrInst + NumLoadInst + NumStoreInst + NumCallInst +
    NumInvokeInst + NumAllocaInst;
  visit(F);
  unsigned EndMemInsts =
    NumGetElementPtrInst + NumLoadInst + NumStoreInst + NumCallInst +
    NumInvokeInst + NumAllocaInst;
  TotalMemInst += EndMemInsts-StartMemInsts;
  return false;
}
