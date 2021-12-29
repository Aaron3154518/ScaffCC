#include <iostream>

// Includes required by llvm
#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

namespace {
	struct TestPass : public ModulePass {
		static char ID; // Pass Identification

		TestPass() : ModulePass(ID) {
			std::cout << "Test Pass: " << ID << std::endl;
		}

		bool runOnFunction(Function &F) override {
			std::cout << "Hello" << std::endl;
			return false;
		}
	};
}

char TestPass::ID = 0;
static RegisterPass<TestPass> X("TestPass", "Tried to make a LLVM pass");
