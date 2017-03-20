##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## NoConfig
ProjectName            :=ss-libuv
ConfigurationName      :=NoConfig
WorkspacePath          :=/home/lzhou/github.com/zhou0/tinysocks/archive/tinysocks-master/build
ProjectPath            :=/home/lzhou/github.com/zhou0/tinysocks/archive/tinysocks-master/build
IntermediateDirectory  :=./
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Li ZHOU
Date                   :=20/03/17
CodeLitePath           :=/home/lzhou/.codelite
LinkerName             :=/usr/bin/g++
SharedObjectLinkerName :=/usr/bin/g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="ss-libuv.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := /usr/bin/ar rcu
CXX      := /usr/bin/g++
CC       := /usr/bin/gcc
CXXFLAGS :=  -g $(Preprocessors)
CFLAGS   :=  -g --std=c99 $(Preprocessors)
ASFLAGS  := 
AS       := /usr/bin/as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=$(IntermediateDirectory)/up_src_client.c$(ObjectSuffix) $(IntermediateDirectory)/up_src_crypt.c$(ObjectSuffix) $(IntermediateDirectory)/up_src_encrypt.c$(ObjectSuffix) $(IntermediateDirectory)/up_src_handshake.c$(ObjectSuffix) $(IntermediateDirectory)/up_src_md5.c$(ObjectSuffix) $(IntermediateDirectory)/up_src_rc4.c$(ObjectSuffix) $(IntermediateDirectory)/up_src_remote.c$(ObjectSuffix) $(IntermediateDirectory)/up_src_server.c$(ObjectSuffix) $(IntermediateDirectory)/up_src_shadow.c$(ObjectSuffix) $(IntermediateDirectory)/up_src_tests.c$(ObjectSuffix) \
	$(IntermediateDirectory)/up_src_utils.c$(ObjectSuffix) $(IntermediateDirectory)/up_src_getopt.c$(ObjectSuffix) $(IntermediateDirectory)/up_src_localser.c$(ObjectSuffix) $(IntermediateDirectory)/up_src_localmain.c$(ObjectSuffix) $(IntermediateDirectory)/up_src_s5.c$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@test -d ./ || $(MakeDirCommand) ./


$(IntermediateDirectory)/.d:
	@test -d ./ || $(MakeDirCommand) ./

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/up_src_client.c$(ObjectSuffix): ../src/client.c $(IntermediateDirectory)/up_src_client.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/lzhou/github.com/zhou0/tinysocks/archive/tinysocks-master/src/client.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_client.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_client.c$(DependSuffix): ../src/client.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_client.c$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_client.c$(DependSuffix) -MM ../src/client.c

$(IntermediateDirectory)/up_src_client.c$(PreprocessSuffix): ../src/client.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_client.c$(PreprocessSuffix) ../src/client.c

$(IntermediateDirectory)/up_src_crypt.c$(ObjectSuffix): ../src/crypt.c $(IntermediateDirectory)/up_src_crypt.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/lzhou/github.com/zhou0/tinysocks/archive/tinysocks-master/src/crypt.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_crypt.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_crypt.c$(DependSuffix): ../src/crypt.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_crypt.c$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_crypt.c$(DependSuffix) -MM ../src/crypt.c

$(IntermediateDirectory)/up_src_crypt.c$(PreprocessSuffix): ../src/crypt.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_crypt.c$(PreprocessSuffix) ../src/crypt.c

$(IntermediateDirectory)/up_src_encrypt.c$(ObjectSuffix): ../src/encrypt.c $(IntermediateDirectory)/up_src_encrypt.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/lzhou/github.com/zhou0/tinysocks/archive/tinysocks-master/src/encrypt.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_encrypt.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_encrypt.c$(DependSuffix): ../src/encrypt.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_encrypt.c$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_encrypt.c$(DependSuffix) -MM ../src/encrypt.c

$(IntermediateDirectory)/up_src_encrypt.c$(PreprocessSuffix): ../src/encrypt.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_encrypt.c$(PreprocessSuffix) ../src/encrypt.c

$(IntermediateDirectory)/up_src_handshake.c$(ObjectSuffix): ../src/handshake.c $(IntermediateDirectory)/up_src_handshake.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/lzhou/github.com/zhou0/tinysocks/archive/tinysocks-master/src/handshake.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_handshake.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_handshake.c$(DependSuffix): ../src/handshake.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_handshake.c$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_handshake.c$(DependSuffix) -MM ../src/handshake.c

$(IntermediateDirectory)/up_src_handshake.c$(PreprocessSuffix): ../src/handshake.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_handshake.c$(PreprocessSuffix) ../src/handshake.c

$(IntermediateDirectory)/up_src_md5.c$(ObjectSuffix): ../src/md5.c $(IntermediateDirectory)/up_src_md5.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/lzhou/github.com/zhou0/tinysocks/archive/tinysocks-master/src/md5.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_md5.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_md5.c$(DependSuffix): ../src/md5.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_md5.c$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_md5.c$(DependSuffix) -MM ../src/md5.c

$(IntermediateDirectory)/up_src_md5.c$(PreprocessSuffix): ../src/md5.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_md5.c$(PreprocessSuffix) ../src/md5.c

$(IntermediateDirectory)/up_src_rc4.c$(ObjectSuffix): ../src/rc4.c $(IntermediateDirectory)/up_src_rc4.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/lzhou/github.com/zhou0/tinysocks/archive/tinysocks-master/src/rc4.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_rc4.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_rc4.c$(DependSuffix): ../src/rc4.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_rc4.c$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_rc4.c$(DependSuffix) -MM ../src/rc4.c

$(IntermediateDirectory)/up_src_rc4.c$(PreprocessSuffix): ../src/rc4.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_rc4.c$(PreprocessSuffix) ../src/rc4.c

$(IntermediateDirectory)/up_src_remote.c$(ObjectSuffix): ../src/remote.c $(IntermediateDirectory)/up_src_remote.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/lzhou/github.com/zhou0/tinysocks/archive/tinysocks-master/src/remote.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_remote.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_remote.c$(DependSuffix): ../src/remote.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_remote.c$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_remote.c$(DependSuffix) -MM ../src/remote.c

$(IntermediateDirectory)/up_src_remote.c$(PreprocessSuffix): ../src/remote.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_remote.c$(PreprocessSuffix) ../src/remote.c

$(IntermediateDirectory)/up_src_server.c$(ObjectSuffix): ../src/server.c $(IntermediateDirectory)/up_src_server.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/lzhou/github.com/zhou0/tinysocks/archive/tinysocks-master/src/server.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_server.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_server.c$(DependSuffix): ../src/server.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_server.c$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_server.c$(DependSuffix) -MM ../src/server.c

$(IntermediateDirectory)/up_src_server.c$(PreprocessSuffix): ../src/server.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_server.c$(PreprocessSuffix) ../src/server.c

$(IntermediateDirectory)/up_src_shadow.c$(ObjectSuffix): ../src/shadow.c $(IntermediateDirectory)/up_src_shadow.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/lzhou/github.com/zhou0/tinysocks/archive/tinysocks-master/src/shadow.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_shadow.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_shadow.c$(DependSuffix): ../src/shadow.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_shadow.c$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_shadow.c$(DependSuffix) -MM ../src/shadow.c

$(IntermediateDirectory)/up_src_shadow.c$(PreprocessSuffix): ../src/shadow.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_shadow.c$(PreprocessSuffix) ../src/shadow.c

$(IntermediateDirectory)/up_src_tests.c$(ObjectSuffix): ../src/tests.c $(IntermediateDirectory)/up_src_tests.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/lzhou/github.com/zhou0/tinysocks/archive/tinysocks-master/src/tests.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_tests.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_tests.c$(DependSuffix): ../src/tests.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_tests.c$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_tests.c$(DependSuffix) -MM ../src/tests.c

$(IntermediateDirectory)/up_src_tests.c$(PreprocessSuffix): ../src/tests.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_tests.c$(PreprocessSuffix) ../src/tests.c

$(IntermediateDirectory)/up_src_utils.c$(ObjectSuffix): ../src/utils.c $(IntermediateDirectory)/up_src_utils.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/lzhou/github.com/zhou0/tinysocks/archive/tinysocks-master/src/utils.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_utils.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_utils.c$(DependSuffix): ../src/utils.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_utils.c$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_utils.c$(DependSuffix) -MM ../src/utils.c

$(IntermediateDirectory)/up_src_utils.c$(PreprocessSuffix): ../src/utils.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_utils.c$(PreprocessSuffix) ../src/utils.c

$(IntermediateDirectory)/up_src_getopt.c$(ObjectSuffix): ../src/getopt.c $(IntermediateDirectory)/up_src_getopt.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/lzhou/github.com/zhou0/tinysocks/archive/tinysocks-master/src/getopt.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_getopt.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_getopt.c$(DependSuffix): ../src/getopt.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_getopt.c$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_getopt.c$(DependSuffix) -MM ../src/getopt.c

$(IntermediateDirectory)/up_src_getopt.c$(PreprocessSuffix): ../src/getopt.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_getopt.c$(PreprocessSuffix) ../src/getopt.c

$(IntermediateDirectory)/up_src_localser.c$(ObjectSuffix): ../src/localser.c $(IntermediateDirectory)/up_src_localser.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/lzhou/github.com/zhou0/tinysocks/archive/tinysocks-master/src/localser.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_localser.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_localser.c$(DependSuffix): ../src/localser.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_localser.c$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_localser.c$(DependSuffix) -MM ../src/localser.c

$(IntermediateDirectory)/up_src_localser.c$(PreprocessSuffix): ../src/localser.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_localser.c$(PreprocessSuffix) ../src/localser.c

$(IntermediateDirectory)/up_src_localmain.c$(ObjectSuffix): ../src/localmain.c $(IntermediateDirectory)/up_src_localmain.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/lzhou/github.com/zhou0/tinysocks/archive/tinysocks-master/src/localmain.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_localmain.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_localmain.c$(DependSuffix): ../src/localmain.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_localmain.c$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_localmain.c$(DependSuffix) -MM ../src/localmain.c

$(IntermediateDirectory)/up_src_localmain.c$(PreprocessSuffix): ../src/localmain.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_localmain.c$(PreprocessSuffix) ../src/localmain.c

$(IntermediateDirectory)/up_src_s5.c$(ObjectSuffix): ../src/s5.c $(IntermediateDirectory)/up_src_s5.c$(DependSuffix)
	$(CC) $(SourceSwitch) "/home/lzhou/github.com/zhou0/tinysocks/archive/tinysocks-master/src/s5.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_src_s5.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_src_s5.c$(DependSuffix): ../src/s5.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_src_s5.c$(ObjectSuffix) -MF$(IntermediateDirectory)/up_src_s5.c$(DependSuffix) -MM ../src/s5.c

$(IntermediateDirectory)/up_src_s5.c$(PreprocessSuffix): ../src/s5.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_src_s5.c$(PreprocessSuffix) ../src/s5.c


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./


