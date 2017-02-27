{***************************************************************************}
{ This source code was generated automatically by                           }
{ Pas file import tool for Scripter Studio (Pro)                            }
{                                                                           }
{ Scripter Studio and Pas file import tool for Scripter Studio              }
{ written by TMS Software                                                   }
{            copyright � 1997 - 2010                                        }
{            Email : info@tmssoftware.com                                   }
{            Web : http://www.tmssoftware.com                               }
{***************************************************************************}
//unit ap_Classes;

interface

{$IF CompilerVersion >= 24}
  {$LEGACYIFEND ON}
{$IFEND}

uses
  Windows,
  Messages,
  ActiveX,
  SysUtils,
  Variants,
  TypInfo,
  Classes,
  ap_System,
  ap_Types,
  atScript;

{$WARNINGS OFF}

type
  TatClassesLibrary = class(TatScripterLibrary)
    procedure __TListEnumeratorCreate(AMachine: TatVirtualMachine);
    procedure __TListEnumeratorMoveNext(AMachine: TatVirtualMachine);
    procedure __TListDestroy(AMachine: TatVirtualMachine);
    procedure __TListClear(AMachine: TatVirtualMachine);
    procedure __TListDelete(AMachine: TatVirtualMachine);
    procedure __TListError(AMachine: TatVirtualMachine);
    procedure __TListExchange(AMachine: TatVirtualMachine);
    procedure __TListExpand(AMachine: TatVirtualMachine);
    procedure __TListGetEnumerator(AMachine: TatVirtualMachine);
    procedure __TListMove(AMachine: TatVirtualMachine);
    procedure __TListPack(AMachine: TatVirtualMachine);
    procedure __TListAssign(AMachine: TatVirtualMachine);
    procedure __GetTListCapacity(AMachine: TatVirtualMachine);
    procedure __SetTListCapacity(AMachine: TatVirtualMachine);
    procedure __GetTListCount(AMachine: TatVirtualMachine);
    procedure __SetTListCount(AMachine: TatVirtualMachine);
    procedure __TThreadListCreate(AMachine: TatVirtualMachine);
    procedure __TThreadListDestroy(AMachine: TatVirtualMachine);
    procedure __TThreadListClear(AMachine: TatVirtualMachine);
    procedure __TThreadListLockList(AMachine: TatVirtualMachine);
    procedure __TThreadListUnlockList(AMachine: TatVirtualMachine);
    procedure __GetTThreadListDuplicates(AMachine: TatVirtualMachine);
    procedure __SetTThreadListDuplicates(AMachine: TatVirtualMachine);
    procedure __TInterfaceListEnumeratorCreate(AMachine: TatVirtualMachine);
    procedure __TInterfaceListEnumeratorMoveNext(AMachine: TatVirtualMachine);
    procedure __TInterfaceListCreate(AMachine: TatVirtualMachine);
    procedure __TInterfaceListDestroy(AMachine: TatVirtualMachine);
    procedure __TInterfaceListClear(AMachine: TatVirtualMachine);
    procedure __TInterfaceListDelete(AMachine: TatVirtualMachine);
    procedure __TInterfaceListExchange(AMachine: TatVirtualMachine);
    procedure __TInterfaceListExpand(AMachine: TatVirtualMachine);
    procedure __TInterfaceListLock(AMachine: TatVirtualMachine);
    procedure __TInterfaceListUnlock(AMachine: TatVirtualMachine);
    procedure __TInterfaceListGetEnumerator(AMachine: TatVirtualMachine);
    procedure __GetTInterfaceListCapacity(AMachine: TatVirtualMachine);
    procedure __SetTInterfaceListCapacity(AMachine: TatVirtualMachine);
    procedure __GetTInterfaceListCount(AMachine: TatVirtualMachine);
    procedure __SetTInterfaceListCount(AMachine: TatVirtualMachine);
    procedure __TBitsDestroy(AMachine: TatVirtualMachine);
    procedure __TBitsOpenBit(AMachine: TatVirtualMachine);
    procedure __GetTBitsBits(AMachine: TatVirtualMachine);
    procedure __SetTBitsBits(AMachine: TatVirtualMachine);
    procedure __GetTBitsSize(AMachine: TatVirtualMachine);
    procedure __SetTBitsSize(AMachine: TatVirtualMachine);
    procedure __TPersistentDestroy(AMachine: TatVirtualMachine);
    procedure __TPersistentAssign(AMachine: TatVirtualMachine);
    procedure __TPersistentGetNamePath(AMachine: TatVirtualMachine);
    procedure __TInterfacedPersistentQueryInterface(AMachine: TatVirtualMachine);
    procedure __TInterfacedPersistentAfterConstruction(AMachine: TatVirtualMachine);
    procedure __TRecallCreate(AMachine: TatVirtualMachine);
    procedure __TRecallDestroy(AMachine: TatVirtualMachine);
    procedure __TRecallStore(AMachine: TatVirtualMachine);
    procedure __TRecallForget(AMachine: TatVirtualMachine);
    procedure __GetTRecallReference(AMachine: TatVirtualMachine);
    procedure __TCollectionItemCreate(AMachine: TatVirtualMachine);
    procedure __TCollectionItemDestroy(AMachine: TatVirtualMachine);
    procedure __TCollectionItemGetNamePath(AMachine: TatVirtualMachine);
    procedure __GetTCollectionItemCollection(AMachine: TatVirtualMachine);
    procedure __SetTCollectionItemCollection(AMachine: TatVirtualMachine);
    procedure __GetTCollectionItemID(AMachine: TatVirtualMachine);
    procedure __GetTCollectionItemIndex(AMachine: TatVirtualMachine);
    procedure __SetTCollectionItemIndex(AMachine: TatVirtualMachine);
    procedure __GetTCollectionItemDisplayName(AMachine: TatVirtualMachine);
    procedure __SetTCollectionItemDisplayName(AMachine: TatVirtualMachine);
    procedure __TCollectionEnumeratorCreate(AMachine: TatVirtualMachine);
    procedure __TCollectionEnumeratorGetCurrent(AMachine: TatVirtualMachine);
    procedure __TCollectionEnumeratorMoveNext(AMachine: TatVirtualMachine);
    procedure __GetTCollectionEnumeratorCurrent(AMachine: TatVirtualMachine);
    procedure __TCollectionDestroy(AMachine: TatVirtualMachine);
    procedure __TCollectionOwner(AMachine: TatVirtualMachine);
    procedure __TCollectionAdd(AMachine: TatVirtualMachine);
    procedure __TCollectionAssign(AMachine: TatVirtualMachine);
    procedure __TCollectionBeginUpdate(AMachine: TatVirtualMachine);
    procedure __TCollectionClear(AMachine: TatVirtualMachine);
    procedure __TCollectionDelete(AMachine: TatVirtualMachine);
    procedure __TCollectionEndUpdate(AMachine: TatVirtualMachine);
    procedure __TCollectionFindItemID(AMachine: TatVirtualMachine);
    procedure __TCollectionGetEnumerator(AMachine: TatVirtualMachine);
    procedure __TCollectionGetNamePath(AMachine: TatVirtualMachine);
    procedure __TCollectionInsert(AMachine: TatVirtualMachine);
    procedure __GetTCollectionCapacity(AMachine: TatVirtualMachine);
    procedure __SetTCollectionCapacity(AMachine: TatVirtualMachine);
    procedure __GetTCollectionCount(AMachine: TatVirtualMachine);
    procedure __GetTCollectionItems(AMachine: TatVirtualMachine);
    procedure __SetTCollectionItems(AMachine: TatVirtualMachine);
    procedure __TStringsEnumeratorCreate(AMachine: TatVirtualMachine);
    procedure __TStringsEnumeratorGetCurrent(AMachine: TatVirtualMachine);
    procedure __TStringsEnumeratorMoveNext(AMachine: TatVirtualMachine);
    procedure __GetTStringsEnumeratorCurrent(AMachine: TatVirtualMachine);
    procedure __TStringsCreate(AMachine: TatVirtualMachine);
    procedure __TStringsDestroy(AMachine: TatVirtualMachine);
    procedure __TStringsAdd(AMachine: TatVirtualMachine);
    procedure __TStringsAddObject(AMachine: TatVirtualMachine);
    procedure __TStringsAppend(AMachine: TatVirtualMachine);
    procedure __TStringsAddStrings(AMachine: TatVirtualMachine);
    procedure __TStringsAssign(AMachine: TatVirtualMachine);
    procedure __TStringsBeginUpdate(AMachine: TatVirtualMachine);
    procedure __TStringsClear(AMachine: TatVirtualMachine);
    procedure __TStringsDelete(AMachine: TatVirtualMachine);
    procedure __TStringsEndUpdate(AMachine: TatVirtualMachine);
    procedure __TStringsEquals(AMachine: TatVirtualMachine);
    procedure __TStringsExchange(AMachine: TatVirtualMachine);
    procedure __TStringsGetEnumerator(AMachine: TatVirtualMachine);
    procedure __TStringsGetText(AMachine: TatVirtualMachine);
    procedure __TStringsIndexOf(AMachine: TatVirtualMachine);
    procedure __TStringsIndexOfName(AMachine: TatVirtualMachine);
    procedure __TStringsIndexOfObject(AMachine: TatVirtualMachine);
    procedure __TStringsInsert(AMachine: TatVirtualMachine);
    procedure __TStringsInsertObject(AMachine: TatVirtualMachine);
    procedure __TStringsLoadFromFile(AMachine: TatVirtualMachine);
    procedure __TStringsLoadFromStream(AMachine: TatVirtualMachine);
    procedure __TStringsMove(AMachine: TatVirtualMachine);
    procedure __TStringsSaveToFile(AMachine: TatVirtualMachine);
    procedure __TStringsSaveToStream(AMachine: TatVirtualMachine);
    procedure __TStringsSetText(AMachine: TatVirtualMachine);
    procedure __GetTStringsCapacity(AMachine: TatVirtualMachine);
    procedure __SetTStringsCapacity(AMachine: TatVirtualMachine);
    procedure __GetTStringsCommaText(AMachine: TatVirtualMachine);
    procedure __SetTStringsCommaText(AMachine: TatVirtualMachine);
    procedure __GetTStringsCount(AMachine: TatVirtualMachine);
    procedure __GetTStringsDefaultEncoding(AMachine: TatVirtualMachine);
    procedure __SetTStringsDefaultEncoding(AMachine: TatVirtualMachine);
    procedure __GetTStringsDelimiter(AMachine: TatVirtualMachine);
    procedure __SetTStringsDelimiter(AMachine: TatVirtualMachine);
    procedure __GetTStringsDelimitedText(AMachine: TatVirtualMachine);
    procedure __SetTStringsDelimitedText(AMachine: TatVirtualMachine);
    procedure __GetTStringsEncoding(AMachine: TatVirtualMachine);
    procedure __GetTStringsLineBreak(AMachine: TatVirtualMachine);
    procedure __SetTStringsLineBreak(AMachine: TatVirtualMachine);
    procedure __GetTStringsNames(AMachine: TatVirtualMachine);
    procedure __GetTStringsObjects(AMachine: TatVirtualMachine);
    procedure __SetTStringsObjects(AMachine: TatVirtualMachine);
    procedure __GetTStringsQuoteChar(AMachine: TatVirtualMachine);
    procedure __SetTStringsQuoteChar(AMachine: TatVirtualMachine);
    procedure __GetTStringsValues(AMachine: TatVirtualMachine);
    procedure __SetTStringsValues(AMachine: TatVirtualMachine);
    procedure __GetTStringsValueFromIndex(AMachine: TatVirtualMachine);
    procedure __SetTStringsValueFromIndex(AMachine: TatVirtualMachine);
    procedure __GetTStringsNameValueSeparator(AMachine: TatVirtualMachine);
    procedure __SetTStringsNameValueSeparator(AMachine: TatVirtualMachine);
    procedure __GetTStringsStrictDelimiter(AMachine: TatVirtualMachine);
    procedure __SetTStringsStrictDelimiter(AMachine: TatVirtualMachine);
    procedure __GetTStringsStrings(AMachine: TatVirtualMachine);
    procedure __SetTStringsStrings(AMachine: TatVirtualMachine);
    procedure __GetTStringsText(AMachine: TatVirtualMachine);
    procedure __SetTStringsText(AMachine: TatVirtualMachine);
    procedure __GetTStringsWriteBOM(AMachine: TatVirtualMachine);
    procedure __SetTStringsWriteBOM(AMachine: TatVirtualMachine);
    procedure __TStringListCreate(AMachine: TatVirtualMachine);
    procedure __TStringListDestroy(AMachine: TatVirtualMachine);
    procedure __TStringListAdd(AMachine: TatVirtualMachine);
    procedure __TStringListAddObject(AMachine: TatVirtualMachine);
    procedure __TStringListAssign(AMachine: TatVirtualMachine);
    procedure __TStringListClear(AMachine: TatVirtualMachine);
    procedure __TStringListDelete(AMachine: TatVirtualMachine);
    procedure __TStringListExchange(AMachine: TatVirtualMachine);
    procedure __TStringListFind(AMachine: TatVirtualMachine);
    procedure __TStringListIndexOf(AMachine: TatVirtualMachine);
    procedure __TStringListInsert(AMachine: TatVirtualMachine);
    procedure __TStringListInsertObject(AMachine: TatVirtualMachine);
    procedure __TStringListSort(AMachine: TatVirtualMachine);
    procedure __GetTStringListDuplicates(AMachine: TatVirtualMachine);
    procedure __SetTStringListDuplicates(AMachine: TatVirtualMachine);
    procedure __GetTStringListSorted(AMachine: TatVirtualMachine);
    procedure __SetTStringListSorted(AMachine: TatVirtualMachine);
    procedure __GetTStringListCaseSensitive(AMachine: TatVirtualMachine);
    procedure __SetTStringListCaseSensitive(AMachine: TatVirtualMachine);
    procedure __GetTStringListOwnsObjects(AMachine: TatVirtualMachine);
    procedure __SetTStringListOwnsObjects(AMachine: TatVirtualMachine);
    procedure __TStreamRead(AMachine: TatVirtualMachine);
    procedure __TStreamWrite(AMachine: TatVirtualMachine);
    procedure __TStreamSeek(AMachine: TatVirtualMachine);
    procedure __TStreamReadBuffer(AMachine: TatVirtualMachine);
    procedure __TStreamWriteBuffer(AMachine: TatVirtualMachine);
    procedure __TStreamCopyFrom(AMachine: TatVirtualMachine);
    procedure __TStreamReadComponent(AMachine: TatVirtualMachine);
    procedure __TStreamReadComponentRes(AMachine: TatVirtualMachine);
    procedure __TStreamWriteComponent(AMachine: TatVirtualMachine);
    procedure __TStreamWriteComponentRes(AMachine: TatVirtualMachine);
    procedure __TStreamWriteDescendent(AMachine: TatVirtualMachine);
    procedure __TStreamWriteDescendentRes(AMachine: TatVirtualMachine);
    procedure __TStreamWriteResourceHeader(AMachine: TatVirtualMachine);
    procedure __TStreamFixupResourceHeader(AMachine: TatVirtualMachine);
    procedure __TStreamReadResHeader(AMachine: TatVirtualMachine);
    procedure __GetTStreamPosition(AMachine: TatVirtualMachine);
    procedure __SetTStreamPosition(AMachine: TatVirtualMachine);
    procedure __GetTStreamSize(AMachine: TatVirtualMachine);
    procedure __SetTStreamSize(AMachine: TatVirtualMachine);
    procedure __THandleStreamCreate(AMachine: TatVirtualMachine);
    procedure __THandleStreamRead(AMachine: TatVirtualMachine);
    procedure __THandleStreamWrite(AMachine: TatVirtualMachine);
    procedure __GetTHandleStreamHandle(AMachine: TatVirtualMachine);
    procedure __TFileStreamCreate(AMachine: TatVirtualMachine);
    procedure __TFileStreamDestroy(AMachine: TatVirtualMachine);
    procedure __GetTFileStreamFileName(AMachine: TatVirtualMachine);
    procedure __TCustomMemoryStreamRead(AMachine: TatVirtualMachine);
    procedure __TCustomMemoryStreamSeek(AMachine: TatVirtualMachine);
    procedure __TCustomMemoryStreamSaveToStream(AMachine: TatVirtualMachine);
    procedure __TCustomMemoryStreamSaveToFile(AMachine: TatVirtualMachine);
    procedure __TMemoryStreamDestroy(AMachine: TatVirtualMachine);
    procedure __TMemoryStreamClear(AMachine: TatVirtualMachine);
    procedure __TMemoryStreamLoadFromStream(AMachine: TatVirtualMachine);
    procedure __TMemoryStreamLoadFromFile(AMachine: TatVirtualMachine);
    procedure __TMemoryStreamSetSize(AMachine: TatVirtualMachine);
    procedure __TMemoryStreamWrite(AMachine: TatVirtualMachine);
    procedure __TStringStreamCreate(AMachine: TatVirtualMachine);
    procedure __TStringStreamDestroy(AMachine: TatVirtualMachine);
    procedure __TStringStreamReadString(AMachine: TatVirtualMachine);
    procedure __TStringStreamWriteString(AMachine: TatVirtualMachine);
    procedure __GetTStringStreamDataString(AMachine: TatVirtualMachine);
    procedure __GetTStringStreamEncoding(AMachine: TatVirtualMachine);
    procedure __TResourceStreamCreate(AMachine: TatVirtualMachine);
    procedure __TResourceStreamCreateFromID(AMachine: TatVirtualMachine);
    procedure __TResourceStreamDestroy(AMachine: TatVirtualMachine);
    procedure __TResourceStreamWrite(AMachine: TatVirtualMachine);
    procedure __TStreamAdapterCreate(AMachine: TatVirtualMachine);
    procedure __TStreamAdapterDestroy(AMachine: TatVirtualMachine);
    procedure __TStreamAdapterSeek(AMachine: TatVirtualMachine);
    procedure __TStreamAdapterSetSize(AMachine: TatVirtualMachine);
    procedure __TStreamAdapterCommit(AMachine: TatVirtualMachine);
    procedure __TStreamAdapterRevert(AMachine: TatVirtualMachine);
    procedure __TStreamAdapterLockRegion(AMachine: TatVirtualMachine);
    procedure __TStreamAdapterUnlockRegion(AMachine: TatVirtualMachine);
    procedure __GetTStreamAdapterStream(AMachine: TatVirtualMachine);
    procedure __GetTStreamAdapterStreamOwnership(AMachine: TatVirtualMachine);
    procedure __SetTStreamAdapterStreamOwnership(AMachine: TatVirtualMachine);
    procedure __TClassFinderDestroy(AMachine: TatVirtualMachine);
    procedure __TFilerCreate(AMachine: TatVirtualMachine);
    procedure __TFilerDestroy(AMachine: TatVirtualMachine);
    procedure __TFilerFlushBuffer(AMachine: TatVirtualMachine);
    procedure __GetTFilerRoot(AMachine: TatVirtualMachine);
    procedure __SetTFilerRoot(AMachine: TatVirtualMachine);
    procedure __GetTFilerLookupRoot(AMachine: TatVirtualMachine);
    procedure __GetTFilerAncestor(AMachine: TatVirtualMachine);
    procedure __SetTFilerAncestor(AMachine: TatVirtualMachine);
    procedure __GetTFilerIgnoreChildren(AMachine: TatVirtualMachine);
    procedure __SetTFilerIgnoreChildren(AMachine: TatVirtualMachine);
    procedure __TReaderDestroy(AMachine: TatVirtualMachine);
    procedure __TReaderBeginReferences(AMachine: TatVirtualMachine);
    procedure __TReaderCheckValue(AMachine: TatVirtualMachine);
    procedure __TReaderEndOfList(AMachine: TatVirtualMachine);
    procedure __TReaderEndReferences(AMachine: TatVirtualMachine);
    procedure __TReaderFixupReferences(AMachine: TatVirtualMachine);
    procedure __TReaderFlushBuffer(AMachine: TatVirtualMachine);
    procedure __TReaderNextValue(AMachine: TatVirtualMachine);
    procedure __TReaderRead(AMachine: TatVirtualMachine);
    procedure __TReaderReadBoolean(AMachine: TatVirtualMachine);
    procedure __TReaderReadChar(AMachine: TatVirtualMachine);
    procedure __TReaderReadWideChar(AMachine: TatVirtualMachine);
    procedure __TReaderReadCollection(AMachine: TatVirtualMachine);
    procedure __TReaderReadComponent(AMachine: TatVirtualMachine);
    procedure __TReaderReadFloat(AMachine: TatVirtualMachine);
    procedure __TReaderReadSingle(AMachine: TatVirtualMachine);
    procedure __TReaderReadDouble(AMachine: TatVirtualMachine);
    procedure __TReaderReadCurrency(AMachine: TatVirtualMachine);
    procedure __TReaderReadDate(AMachine: TatVirtualMachine);
    procedure __TReaderReadIdent(AMachine: TatVirtualMachine);
    procedure __TReaderReadInteger(AMachine: TatVirtualMachine);
    procedure __TReaderReadInt64(AMachine: TatVirtualMachine);
    procedure __TReaderReadListBegin(AMachine: TatVirtualMachine);
    procedure __TReaderReadListEnd(AMachine: TatVirtualMachine);
    procedure __TReaderReadPrefix(AMachine: TatVirtualMachine);
    procedure __TReaderReadRootComponent(AMachine: TatVirtualMachine);
    procedure __TReaderReadSignature(AMachine: TatVirtualMachine);
    procedure __TReaderReadStr(AMachine: TatVirtualMachine);
    procedure __TReaderReadString(AMachine: TatVirtualMachine);
    procedure __TReaderReadWideString(AMachine: TatVirtualMachine);
    procedure __TReaderReadValue(AMachine: TatVirtualMachine);
    procedure __TReaderReadVariant(AMachine: TatVirtualMachine);
    procedure __TReaderCopyValue(AMachine: TatVirtualMachine);
    procedure __TReaderSkipValue(AMachine: TatVirtualMachine);
    procedure __GetTReaderOwner(AMachine: TatVirtualMachine);
    procedure __SetTReaderOwner(AMachine: TatVirtualMachine);
    procedure __GetTReaderParent(AMachine: TatVirtualMachine);
    procedure __SetTReaderParent(AMachine: TatVirtualMachine);
    procedure __GetTReaderPosition(AMachine: TatVirtualMachine);
    procedure __SetTReaderPosition(AMachine: TatVirtualMachine);
    procedure __TWriterDestroy(AMachine: TatVirtualMachine);
    procedure __TWriterFlushBuffer(AMachine: TatVirtualMachine);
    procedure __TWriterWrite(AMachine: TatVirtualMachine);
    procedure __TWriterWriteBoolean(AMachine: TatVirtualMachine);
    procedure __TWriterWriteCollection(AMachine: TatVirtualMachine);
    procedure __TWriterWriteComponent(AMachine: TatVirtualMachine);
    procedure __TWriterWriteChar(AMachine: TatVirtualMachine);
    procedure __TWriterWriteWideChar(AMachine: TatVirtualMachine);
    procedure __TWriterWriteDescendent(AMachine: TatVirtualMachine);
    procedure __TWriterWriteFloat(AMachine: TatVirtualMachine);
    procedure __TWriterWriteSingle(AMachine: TatVirtualMachine);
    procedure __TWriterWriteDouble(AMachine: TatVirtualMachine);
    procedure __TWriterWriteCurrency(AMachine: TatVirtualMachine);
    procedure __TWriterWriteDate(AMachine: TatVirtualMachine);
    procedure __TWriterWriteIdent(AMachine: TatVirtualMachine);
    procedure __TWriterWriteInteger(AMachine: TatVirtualMachine);
    procedure __TWriterWriteListBegin(AMachine: TatVirtualMachine);
    procedure __TWriterWriteListEnd(AMachine: TatVirtualMachine);
    procedure __TWriterWriteProperties(AMachine: TatVirtualMachine);
    procedure __TWriterWriteRootComponent(AMachine: TatVirtualMachine);
    procedure __TWriterWriteSignature(AMachine: TatVirtualMachine);
    procedure __TWriterWriteStr(AMachine: TatVirtualMachine);
    procedure __TWriterWriteUTF8Str(AMachine: TatVirtualMachine);
    procedure __TWriterWriteString(AMachine: TatVirtualMachine);
    procedure __TWriterWriteWideString(AMachine: TatVirtualMachine);
    procedure __TWriterWriteVariant(AMachine: TatVirtualMachine);
    procedure __GetTWriterPosition(AMachine: TatVirtualMachine);
    procedure __SetTWriterPosition(AMachine: TatVirtualMachine);
    procedure __GetTWriterRootAncestor(AMachine: TatVirtualMachine);
    procedure __SetTWriterRootAncestor(AMachine: TatVirtualMachine);
    procedure __GetTWriterUseQualifiedNames(AMachine: TatVirtualMachine);
    procedure __SetTWriterUseQualifiedNames(AMachine: TatVirtualMachine);
    procedure __TParserDestroy(AMachine: TatVirtualMachine);
    procedure __TParserCheckToken(AMachine: TatVirtualMachine);
    procedure __TParserCheckTokenSymbol(AMachine: TatVirtualMachine);
    procedure __TParserError(AMachine: TatVirtualMachine);
    procedure __TParserErrorStr(AMachine: TatVirtualMachine);
    procedure __TParserHexToBinary(AMachine: TatVirtualMachine);
    procedure __TParserNextToken(AMachine: TatVirtualMachine);
    procedure __TParserSourcePos(AMachine: TatVirtualMachine);
    procedure __TParserTokenComponentIdent(AMachine: TatVirtualMachine);
    procedure __TParserTokenFloat(AMachine: TatVirtualMachine);
    procedure __TParserTokenInt(AMachine: TatVirtualMachine);
    procedure __TParserTokenString(AMachine: TatVirtualMachine);
    procedure __TParserTokenWideString(AMachine: TatVirtualMachine);
    procedure __TParserTokenSymbolIs(AMachine: TatVirtualMachine);
    procedure __GetTParserFloatType(AMachine: TatVirtualMachine);
    procedure __GetTParserSourceLine(AMachine: TatVirtualMachine);
    procedure __GetTParserLinePos(AMachine: TatVirtualMachine);
    procedure __GetTParserToken(AMachine: TatVirtualMachine);
    procedure __TThreadCreate(AMachine: TatVirtualMachine);
    procedure __TThreadDestroy(AMachine: TatVirtualMachine);
    procedure __TThreadAfterConstruction(AMachine: TatVirtualMachine);
    procedure __TThreadResume(AMachine: TatVirtualMachine);
    procedure __TThreadStart(AMachine: TatVirtualMachine);
    procedure __TThreadSuspend(AMachine: TatVirtualMachine);
    procedure __TThreadTerminate(AMachine: TatVirtualMachine);
    procedure __TThreadWaitFor(AMachine: TatVirtualMachine);
    procedure __TThreadCheckTerminated(AMachine: TatVirtualMachine);
    procedure __TThreadSetReturnValue(AMachine: TatVirtualMachine);
    procedure __TThreadRemoveQueuedEvents(AMachine: TatVirtualMachine);
    procedure __TThreadNameThreadForDebugging(AMachine: TatVirtualMachine);
    procedure __TThreadSpinWait(AMachine: TatVirtualMachine);
    procedure __TThreadSleep(AMachine: TatVirtualMachine);
    procedure __TThreadYield(AMachine: TatVirtualMachine);
    procedure __GetTThreadExternalThread(AMachine: TatVirtualMachine);
    procedure __GetTThreadFatalException(AMachine: TatVirtualMachine);
    procedure __GetTThreadFreeOnTerminate(AMachine: TatVirtualMachine);
    procedure __SetTThreadFreeOnTerminate(AMachine: TatVirtualMachine);
    procedure __GetTThreadFinished(AMachine: TatVirtualMachine);
    procedure __GetTThreadHandle(AMachine: TatVirtualMachine);
    procedure __GetTThreadPriority(AMachine: TatVirtualMachine);
    procedure __SetTThreadPriority(AMachine: TatVirtualMachine);
    procedure __GetTThreadSuspended(AMachine: TatVirtualMachine);
    procedure __SetTThreadSuspended(AMachine: TatVirtualMachine);
    procedure __GetTThreadThreadID(AMachine: TatVirtualMachine);
    procedure __GetTThreadCurrentThread(AMachine: TatVirtualMachine);
    procedure __GetTThreadProcessorCount(AMachine: TatVirtualMachine);
    procedure __GetTThreadIsSingleProcessor(AMachine: TatVirtualMachine);
    procedure __TComponentEnumeratorCreate(AMachine: TatVirtualMachine);
    procedure __TComponentEnumeratorGetCurrent(AMachine: TatVirtualMachine);
    procedure __TComponentEnumeratorMoveNext(AMachine: TatVirtualMachine);
    procedure __GetTComponentEnumeratorCurrent(AMachine: TatVirtualMachine);
    procedure __TComponentCreate(AMachine: TatVirtualMachine);
    procedure __TComponentDestroy(AMachine: TatVirtualMachine);
    procedure __TComponentBeforeDestruction(AMachine: TatVirtualMachine);
    procedure __TComponentDestroyComponents(AMachine: TatVirtualMachine);
    procedure __TComponentDestroying(AMachine: TatVirtualMachine);
    procedure __TComponentExecuteAction(AMachine: TatVirtualMachine);
    procedure __TComponentFindComponent(AMachine: TatVirtualMachine);
    procedure __TComponentFreeNotification(AMachine: TatVirtualMachine);
    procedure __TComponentRemoveFreeNotification(AMachine: TatVirtualMachine);
    procedure __TComponentFreeOnRelease(AMachine: TatVirtualMachine);
    procedure __TComponentGetEnumerator(AMachine: TatVirtualMachine);
    procedure __TComponentGetParentComponent(AMachine: TatVirtualMachine);
    procedure __TComponentGetNamePath(AMachine: TatVirtualMachine);
    procedure __TComponentHasParent(AMachine: TatVirtualMachine);
    procedure __TComponentInsertComponent(AMachine: TatVirtualMachine);
    procedure __TComponentRemoveComponent(AMachine: TatVirtualMachine);
    procedure __TComponentSetSubComponent(AMachine: TatVirtualMachine);
    procedure __TComponentUpdateAction(AMachine: TatVirtualMachine);
    procedure __GetTComponentComponents(AMachine: TatVirtualMachine);
    procedure __GetTComponentComponentCount(AMachine: TatVirtualMachine);
    procedure __GetTComponentComponentIndex(AMachine: TatVirtualMachine);
    procedure __SetTComponentComponentIndex(AMachine: TatVirtualMachine);
    procedure __GetTComponentComponentState(AMachine: TatVirtualMachine);
    procedure __GetTComponentComponentStyle(AMachine: TatVirtualMachine);
    procedure __GetTComponentDesignInfo(AMachine: TatVirtualMachine);
    procedure __SetTComponentDesignInfo(AMachine: TatVirtualMachine);
    procedure __GetTComponentOwner(AMachine: TatVirtualMachine);
    procedure __TBasicActionLinkCreate(AMachine: TatVirtualMachine);
    procedure __TBasicActionLinkDestroy(AMachine: TatVirtualMachine);
    procedure __TBasicActionLinkExecute(AMachine: TatVirtualMachine);
    procedure __TBasicActionLinkUpdate(AMachine: TatVirtualMachine);
    procedure __GetTBasicActionLinkAction(AMachine: TatVirtualMachine);
    procedure __SetTBasicActionLinkAction(AMachine: TatVirtualMachine);
    procedure __TBasicActionCreate(AMachine: TatVirtualMachine);
    procedure __TBasicActionDestroy(AMachine: TatVirtualMachine);
    procedure __TBasicActionHandlesTarget(AMachine: TatVirtualMachine);
    procedure __TBasicActionUpdateTarget(AMachine: TatVirtualMachine);
    procedure __TBasicActionExecuteTarget(AMachine: TatVirtualMachine);
    procedure __TBasicActionExecute(AMachine: TatVirtualMachine);
    procedure __TBasicActionRegisterChanges(AMachine: TatVirtualMachine);
    procedure __TBasicActionUnRegisterChanges(AMachine: TatVirtualMachine);
    procedure __TBasicActionUpdate(AMachine: TatVirtualMachine);
    procedure __GetTBasicActionActionComponent(AMachine: TatVirtualMachine);
    procedure __SetTBasicActionActionComponent(AMachine: TatVirtualMachine);
    procedure __TDataModuleCreate(AMachine: TatVirtualMachine);
    procedure __TDataModuleCreateNew(AMachine: TatVirtualMachine);
    procedure __TDataModuleDestroy(AMachine: TatVirtualMachine);
    procedure __TDataModuleAfterConstruction(AMachine: TatVirtualMachine);
    procedure __TDataModuleBeforeDestruction(AMachine: TatVirtualMachine);
    procedure __GetTDataModuleDesignOffset(AMachine: TatVirtualMachine);
    procedure __SetTDataModuleDesignOffset(AMachine: TatVirtualMachine);
    procedure __GetTDataModuleDesignSize(AMachine: TatVirtualMachine);
    procedure __SetTDataModuleDesignSize(AMachine: TatVirtualMachine);
    procedure __TTextReaderClose(AMachine: TatVirtualMachine);
    procedure __TTextReaderPeek(AMachine: TatVirtualMachine);
    procedure __TTextReaderRead(AMachine: TatVirtualMachine);
    procedure __TTextReaderReadLine(AMachine: TatVirtualMachine);
    procedure __TTextReaderReadToEnd(AMachine: TatVirtualMachine);
    procedure __TBinaryReaderCreate(AMachine: TatVirtualMachine);
    procedure __TBinaryReaderDestroy(AMachine: TatVirtualMachine);
    procedure __TBinaryReaderClose(AMachine: TatVirtualMachine);
    procedure __TBinaryReaderPeekChar(AMachine: TatVirtualMachine);
    procedure __TBinaryReaderRead(AMachine: TatVirtualMachine);
    procedure __TBinaryReaderReadBoolean(AMachine: TatVirtualMachine);
    procedure __TBinaryReaderReadByte(AMachine: TatVirtualMachine);
    procedure __TBinaryReaderReadChar(AMachine: TatVirtualMachine);
    procedure __TBinaryReaderReadDouble(AMachine: TatVirtualMachine);
    procedure __TBinaryReaderReadShortInt(AMachine: TatVirtualMachine);
    procedure __TBinaryReaderReadInt16(AMachine: TatVirtualMachine);
    procedure __TBinaryReaderReadInteger(AMachine: TatVirtualMachine);
    procedure __TBinaryReaderReadInt32(AMachine: TatVirtualMachine);
    procedure __TBinaryReaderReadInt64(AMachine: TatVirtualMachine);
    procedure __TBinaryReaderReadSmallInt(AMachine: TatVirtualMachine);
    procedure __TBinaryReaderReadSByte(AMachine: TatVirtualMachine);
    procedure __TBinaryReaderReadSingle(AMachine: TatVirtualMachine);
    procedure __TBinaryReaderReadString(AMachine: TatVirtualMachine);
    procedure __TBinaryReaderReadWord(AMachine: TatVirtualMachine);
    procedure __TBinaryReaderReadUInt16(AMachine: TatVirtualMachine);
    procedure __TBinaryReaderReadCardinal(AMachine: TatVirtualMachine);
    procedure __TBinaryReaderReadUInt32(AMachine: TatVirtualMachine);
    procedure __TBinaryReaderReadUInt64(AMachine: TatVirtualMachine);
    procedure __GetTBinaryReaderBaseStream(AMachine: TatVirtualMachine);
    procedure __TBinaryWriterCreate(AMachine: TatVirtualMachine);
    procedure __TBinaryWriterDestroy(AMachine: TatVirtualMachine);
    procedure __TBinaryWriterClose(AMachine: TatVirtualMachine);
    procedure __TBinaryWriterSeek(AMachine: TatVirtualMachine);
    procedure __TBinaryWriterWrite(AMachine: TatVirtualMachine);
    procedure __GetTBinaryWriterBaseStream(AMachine: TatVirtualMachine);
    procedure __TStringReaderCreate(AMachine: TatVirtualMachine);
    procedure __TStringReaderClose(AMachine: TatVirtualMachine);
    procedure __TStringReaderPeek(AMachine: TatVirtualMachine);
    procedure __TStringReaderRead(AMachine: TatVirtualMachine);
    procedure __TStringReaderReadLine(AMachine: TatVirtualMachine);
    procedure __TStringReaderReadToEnd(AMachine: TatVirtualMachine);
    procedure __TStreamReaderCreate(AMachine: TatVirtualMachine);
    procedure __TStreamReaderDestroy(AMachine: TatVirtualMachine);
    procedure __TStreamReaderClose(AMachine: TatVirtualMachine);
    procedure __TStreamReaderDiscardBufferedData(AMachine: TatVirtualMachine);
    procedure __TStreamReaderOwnStream(AMachine: TatVirtualMachine);
    procedure __TStreamReaderPeek(AMachine: TatVirtualMachine);
    procedure __TStreamReaderRead(AMachine: TatVirtualMachine);
    procedure __TStreamReaderReadLine(AMachine: TatVirtualMachine);
    procedure __TStreamReaderReadToEnd(AMachine: TatVirtualMachine);
    procedure __GetTStreamReaderBaseStream(AMachine: TatVirtualMachine);
    procedure __GetTStreamReaderCurrentEncoding(AMachine: TatVirtualMachine);
    procedure __GetTStreamReaderEndOfStream(AMachine: TatVirtualMachine);
    procedure __Point(AMachine: TatVirtualMachine);
    procedure __SmallPoint(AMachine: TatVirtualMachine);
    procedure __PointsEqual(AMachine: TatVirtualMachine);
    procedure __InvalidPoint(AMachine: TatVirtualMachine);
    procedure __Rect(AMachine: TatVirtualMachine);
    procedure __Bounds(AMachine: TatVirtualMachine);
    procedure __UnRegisterModuleClasses(AMachine: TatVirtualMachine);
    procedure __FindGlobalComponent(AMachine: TatVirtualMachine);
    procedure __IsUniqueGlobalComponentName(AMachine: TatVirtualMachine);
    procedure __InitComponentRes(AMachine: TatVirtualMachine);
    procedure __ReadComponentRes(AMachine: TatVirtualMachine);
    procedure __ReadComponentResEx(AMachine: TatVirtualMachine);
    procedure __ReadComponentResFile(AMachine: TatVirtualMachine);
    procedure __WriteComponentResFile(AMachine: TatVirtualMachine);
    procedure __GlobalFixupReferences(AMachine: TatVirtualMachine);
    procedure __GetFixupReferenceNames(AMachine: TatVirtualMachine);
    procedure __GetFixupInstanceNames(AMachine: TatVirtualMachine);
    procedure __RedirectFixupReferences(AMachine: TatVirtualMachine);
    procedure __RemoveFixupReferences(AMachine: TatVirtualMachine);
    procedure __RemoveFixups(AMachine: TatVirtualMachine);
    procedure __FindNestedComponent(AMachine: TatVirtualMachine);
    procedure __BeginGlobalLoading(AMachine: TatVirtualMachine);
    procedure __NotifyGlobalLoading(AMachine: TatVirtualMachine);
    procedure __EndGlobalLoading(AMachine: TatVirtualMachine);
    procedure __CollectionsEqual(AMachine: TatVirtualMachine);
    procedure __GetUltimateOwner(AMachine: TatVirtualMachine);
    procedure __ObjectBinaryToText(AMachine: TatVirtualMachine);
    procedure __ObjectTextToBinary(AMachine: TatVirtualMachine);
    procedure __ObjectResourceToText(AMachine: TatVirtualMachine);
    procedure __ObjectTextToResource(AMachine: TatVirtualMachine);
    procedure __TestStreamFormat(AMachine: TatVirtualMachine);
    procedure __GetResourceName(AMachine: TatVirtualMachine);
    procedure __WriteObjectResourceHeader(AMachine: TatVirtualMachine);
    procedure __LineStart(AMachine: TatVirtualMachine);
    procedure __ExtractStrings(AMachine: TatVirtualMachine);
    procedure __BinToHex(AMachine: TatVirtualMachine);
    procedure __HexToBin(AMachine: TatVirtualMachine);
    procedure __CheckSynchronize(AMachine: TatVirtualMachine);
    procedure __DeallocateHWnd(AMachine: TatVirtualMachine);
    procedure __AncestorIsValid(AMachine: TatVirtualMachine);
    procedure __GetCurrentGroup(AMachine: TatVirtualMachine);
    procedure __SetCurrentGroup(AMachine: TatVirtualMachine);
    procedure Init; override;
    class function LibraryName: string; override;
  end;

  EStreamErrorClass = class of EStreamError;
  EFileStreamErrorClass = class of EFileStreamError;
  EFCreateErrorClass = class of EFCreateError;
  EFOpenErrorClass = class of EFOpenError;
  EFilerErrorClass = class of EFilerError;
  EReadErrorClass = class of EReadError;
  EWriteErrorClass = class of EWriteError;
  EClassNotFoundClass = class of EClassNotFound;
  EMethodNotFoundClass = class of EMethodNotFound;
  EInvalidImageClass = class of EInvalidImage;
  EResNotFoundClass = class of EResNotFound;
  EListErrorClass = class of EListError;
  EBitsErrorClass = class of EBitsError;
  EStringListErrorClass = class of EStringListError;
  EComponentErrorClass = class of EComponentError;
  EParserErrorClass = class of EParserError;
  EOutOfResourcesClass = class of EOutOfResources;
  EInvalidOperationClass = class of EInvalidOperation;
  TListEnumeratorClass = class of TListEnumerator;
  TListClass = class of TList;
  TThreadListClass = class of TThreadList;
  TInterfaceListEnumeratorClass = class of TInterfaceListEnumerator;
  TInterfaceListClass = class of TInterfaceList;
  TBitsClass = class of TBits;
  TPersistentClass = class of TPersistent;
  TInterfacedPersistentClass = class of TInterfacedPersistent;
  TRecallClass = class of TRecall;
  TCollectionItemClass = class of TCollectionItem;
  TCollectionEnumeratorClass = class of TCollectionEnumerator;
  TCollectionClass = class of TCollection;
  TOwnedCollectionClass = class of TOwnedCollection;
  TStringsEnumeratorClass = class of TStringsEnumerator;
  TStringsClass = class of TStrings;
  TStringListClass = class of TStringList;
  TStreamClass = class of TStream;
  THandleStreamClass = class of THandleStream;
  TFileStreamClass = class of TFileStream;
  TCustomMemoryStreamClass = class of TCustomMemoryStream;
  TMemoryStreamClass = class of TMemoryStream;
  TBytesStreamClass = class of TBytesStream;
  TStringStreamClass = class of TStringStream;
  TResourceStreamClass = class of TResourceStream;
  TStreamAdapterClass = class of TStreamAdapter;
  TClassFinderClass = class of TClassFinder;
  TFilerClass = class of TFiler;
  TReaderClass = class of TReader;
  TWriterClass = class of TWriter;
  TParserClass = class of TParser;
  EThreadClass = class of EThread;
  EThreadExternalExceptionClass = class of EThreadExternalException;
  TThreadClass = class of TThread;
  TComponentEnumeratorClass = class of TComponentEnumerator;
  TComponentClass = class of TComponent;
  TBasicActionLinkClass = class of TBasicActionLink;
  TBasicActionClass = class of TBasicAction;
  TDataModuleClass = class of TDataModule;
  TTextReaderClass = class of TTextReader;
  TBinaryReaderClass = class of TBinaryReader;
  TBinaryWriterClass = class of TBinaryWriter;
  TStringReaderClass = class of TStringReader;
  TStreamReaderClass = class of TStreamReader;

  TatClassesDispatcher = class(TatEventDispatcher)
  private
    procedure __TNotifyEvent( Sender: TObject);
    procedure __TGetStrProc(const S: string);
    procedure __TGetModuleProc(const FileName: string; const UnitName: string; const FormName: string; const DesignClass: string;  CoClasses: TStrings);
    procedure __TReaderProc( Reader: TReader);
    procedure __TWriterProc( Writer: TWriter);
    procedure __TStreamProc( Stream: TStream);
    procedure __TSetNameEvent( Reader: TReader;  Component: TComponent; var Name: string);
    procedure __TReferenceNameEvent( Reader: TReader; var Name: string);
    procedure __TReadComponentsProc( Component: TComponent);
    procedure __TReaderError( Reader: TReader; const Message: string; var Handled: Boolean);
    procedure __TFindAncestorEvent( Writer: TWriter;  Component: TComponent; const Name: string; var Ancestor: TComponent; var RootAncestor: TComponent);
    procedure __TGetLookupInfoEvent(var Ancestor: TPersistent; var Root: TComponent; var LookupRoot: TComponent; var RootAncestor: TComponent);
    procedure __TParserErrorEvent( Sender: TObject; const Message: string; var Handled: Boolean);
    procedure __TThreadMethod();
    procedure __TGetChildProc( Child: TComponent);
  end;

  TStringItemWrapper = class(TatRecordWrapper)
  private
    FFString: string;
    FFObject: TObject;
  public
    constructor Create(ARecord: TStringItem);
    function ObjToRec: TStringItem;
  published
    property FString: string read FFString write FFString;
    property FObject: TObject read FFObject write FFObject;
  end;
  
  TIdentMapEntryWrapper = class(TatRecordWrapper)
  private
    FValue: Integer;
    FName: String;
  public
    constructor Create(ARecord: TIdentMapEntry);
    function ObjToRec: TIdentMapEntry;
  published
    property Value: Integer read FValue write FValue;
    property Name: String read FName write FName;
  end;
  

implementation

constructor TStringItemWrapper.Create(ARecord: TStringItem);
begin
  inherited Create;
  FFString := ARecord.FString;
  FFObject := ARecord.FObject;
end;

function TStringItemWrapper.ObjToRec: TStringItem;
begin
  result.FString := FFString;
  result.FObject := FFObject;
end;

constructor TIdentMapEntryWrapper.Create(ARecord: TIdentMapEntry);
begin
  inherited Create;
  FValue := ARecord.Value;
  FName := ARecord.Name;
end;

function TIdentMapEntryWrapper.ObjToRec: TIdentMapEntry;
begin
  result.Value := FValue;
  result.Name := FName;
end;



procedure TatClassesLibrary.__TListEnumeratorCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TListEnumeratorClass(CurrentClass.ClassRef).Create(TList(VarToObject(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TListEnumeratorMoveNext(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TListEnumerator(CurrentObject).MoveNext;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TListDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TList(CurrentObject).Destroy;
  end;
end;

procedure TatClassesLibrary.__TListClear(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TList(CurrentObject).Clear;
  end;
end;

procedure TatClassesLibrary.__TListDelete(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TList(CurrentObject).Delete(VarToInteger(GetInputArg(0)));
  end;
end;

procedure TatClassesLibrary.__TListError(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TListClass(CurrentClass.ClassRef).Error(VarToStr(GetInputArg(0)),VarToInteger(GetInputArg(1)));
  end;
end;

procedure TatClassesLibrary.__TListExchange(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TList(CurrentObject).Exchange(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)));
  end;
end;

procedure TatClassesLibrary.__TListExpand(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TList(CurrentObject).Expand);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TListGetEnumerator(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TList(CurrentObject).GetEnumerator);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TListMove(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TList(CurrentObject).Move(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)));
  end;
end;

procedure TatClassesLibrary.__TListPack(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TList(CurrentObject).Pack;
  end;
end;

procedure TatClassesLibrary.__TListAssign(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    Case InputArgCount of
      1: TList(CurrentObject).Assign(TList(VarToObject(GetInputArg(0))));
      2: TList(CurrentObject).Assign(TList(VarToObject(GetInputArg(0))),TListAssignOp(VarToInteger(GetInputArg(1))));
      3: TList(CurrentObject).Assign(TList(VarToObject(GetInputArg(0))),TListAssignOp(VarToInteger(GetInputArg(1))),TList(VarToObject(GetInputArg(2))));
    end;
  end;
end;

procedure TatClassesLibrary.__GetTListCapacity(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TList(CurrentObject).Capacity));
  end;
end;

procedure TatClassesLibrary.__SetTListCapacity(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TList(CurrentObject).Capacity:=VarToInteger(GetInputArg(0));
  end;
end;

procedure TatClassesLibrary.__GetTListCount(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TList(CurrentObject).Count));
  end;
end;

procedure TatClassesLibrary.__SetTListCount(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TList(CurrentObject).Count:=VarToInteger(GetInputArg(0));
  end;
end;

procedure TatClassesLibrary.__TThreadListCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TThreadListClass(CurrentClass.ClassRef).Create);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TThreadListDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TThreadList(CurrentObject).Destroy;
  end;
end;

procedure TatClassesLibrary.__TThreadListClear(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TThreadList(CurrentObject).Clear;
  end;
end;

procedure TatClassesLibrary.__TThreadListLockList(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TThreadList(CurrentObject).LockList);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TThreadListUnlockList(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TThreadList(CurrentObject).UnlockList;
  end;
end;

procedure TatClassesLibrary.__GetTThreadListDuplicates(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TThreadList(CurrentObject).Duplicates));
  end;
end;

procedure TatClassesLibrary.__SetTThreadListDuplicates(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TThreadList(CurrentObject).Duplicates:=TDuplicates(VarToInteger(GetInputArg(0)));
  end;
end;

procedure TatClassesLibrary.__TInterfaceListEnumeratorCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TInterfaceListEnumeratorClass(CurrentClass.ClassRef).Create(TInterfaceList(VarToObject(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TInterfaceListEnumeratorMoveNext(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TInterfaceListEnumerator(CurrentObject).MoveNext;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TInterfaceListCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TInterfaceListClass(CurrentClass.ClassRef).Create);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TInterfaceListDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TInterfaceList(CurrentObject).Destroy;
  end;
end;

procedure TatClassesLibrary.__TInterfaceListClear(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TInterfaceList(CurrentObject).Clear;
  end;
end;

procedure TatClassesLibrary.__TInterfaceListDelete(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TInterfaceList(CurrentObject).Delete(VarToInteger(GetInputArg(0)));
  end;
end;

procedure TatClassesLibrary.__TInterfaceListExchange(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TInterfaceList(CurrentObject).Exchange(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)));
  end;
end;

procedure TatClassesLibrary.__TInterfaceListExpand(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TInterfaceList(CurrentObject).Expand);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TInterfaceListLock(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TInterfaceList(CurrentObject).Lock;
  end;
end;

procedure TatClassesLibrary.__TInterfaceListUnlock(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TInterfaceList(CurrentObject).Unlock;
  end;
end;

procedure TatClassesLibrary.__TInterfaceListGetEnumerator(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TInterfaceList(CurrentObject).GetEnumerator);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__GetTInterfaceListCapacity(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TInterfaceList(CurrentObject).Capacity));
  end;
end;

procedure TatClassesLibrary.__SetTInterfaceListCapacity(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TInterfaceList(CurrentObject).Capacity:=VarToInteger(GetInputArg(0));
  end;
end;

procedure TatClassesLibrary.__GetTInterfaceListCount(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TInterfaceList(CurrentObject).Count));
  end;
end;

procedure TatClassesLibrary.__SetTInterfaceListCount(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TInterfaceList(CurrentObject).Count:=VarToInteger(GetInputArg(0));
  end;
end;

procedure TatClassesLibrary.__TBitsDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TBits(CurrentObject).Destroy;
  end;
end;

procedure TatClassesLibrary.__TBitsOpenBit(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TBits(CurrentObject).OpenBit);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__GetTBitsBits(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TBits(CurrentObject).Bits[VarToInteger(GetArrayIndex(0))]);
  end;
end;

procedure TatClassesLibrary.__SetTBitsBits(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TBits(CurrentObject).Bits[VarToInteger(GetArrayIndex(0))]:=GetInputArg(0);
  end;
end;

procedure TatClassesLibrary.__GetTBitsSize(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TBits(CurrentObject).Size));
  end;
end;

procedure TatClassesLibrary.__SetTBitsSize(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TBits(CurrentObject).Size:=VarToInteger(GetInputArg(0));
  end;
end;

procedure TatClassesLibrary.__TPersistentDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TPersistent(CurrentObject).Destroy;
  end;
end;

procedure TatClassesLibrary.__TPersistentAssign(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TPersistent(CurrentObject).Assign(TPersistent(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatClassesLibrary.__TPersistentGetNamePath(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(TPersistent(CurrentObject).GetNamePath);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TInterfacedPersistentQueryInterface(AMachine: TatVirtualMachine);
  var
  Param1: Variant;
  AResult: variant;
begin
  with AMachine do
  begin
Param1 := GetInputArg(1);
AResult := Integer(TInterfacedPersistent(CurrentObject).QueryInterface(TGUIDWrapper(integer(GetInputArg(0))).ObjToRec,Param1));
    ReturnOutputArg(AResult);
    SetInputArg(1,Param1);
  end;
end;

procedure TatClassesLibrary.__TInterfacedPersistentAfterConstruction(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TInterfacedPersistent(CurrentObject).AfterConstruction;
  end;
end;

procedure TatClassesLibrary.__TRecallCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TRecallClass(CurrentClass.ClassRef).Create(TPersistent(VarToObject(GetInputArg(0))),TPersistent(VarToObject(GetInputArg(1)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TRecallDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TRecall(CurrentObject).Destroy;
  end;
end;

procedure TatClassesLibrary.__TRecallStore(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TRecall(CurrentObject).Store;
  end;
end;

procedure TatClassesLibrary.__TRecallForget(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TRecall(CurrentObject).Forget;
  end;
end;

procedure TatClassesLibrary.__GetTRecallReference(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(TRecall(CurrentObject).Reference));
  end;
end;

procedure TatClassesLibrary.__TCollectionItemCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TCollectionItemClass(CurrentClass.ClassRef).Create(TCollection(VarToObject(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TCollectionItemDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCollectionItem(CurrentObject).Destroy;
  end;
end;

procedure TatClassesLibrary.__TCollectionItemGetNamePath(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(TCollectionItem(CurrentObject).GetNamePath);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__GetTCollectionItemCollection(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(TCollectionItem(CurrentObject).Collection));
  end;
end;

procedure TatClassesLibrary.__SetTCollectionItemCollection(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCollectionItem(CurrentObject).Collection:=TCollection(VarToObject(GetInputArg(0)));
  end;
end;

procedure TatClassesLibrary.__GetTCollectionItemID(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TCollectionItem(CurrentObject).ID));
  end;
end;

procedure TatClassesLibrary.__GetTCollectionItemIndex(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TCollectionItem(CurrentObject).Index));
  end;
end;

procedure TatClassesLibrary.__SetTCollectionItemIndex(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCollectionItem(CurrentObject).Index:=VarToInteger(GetInputArg(0));
  end;
end;

procedure TatClassesLibrary.__GetTCollectionItemDisplayName(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(string(TCollectionItem(CurrentObject).DisplayName));
  end;
end;

procedure TatClassesLibrary.__SetTCollectionItemDisplayName(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCollectionItem(CurrentObject).DisplayName:=VarToStr(GetInputArg(0));
  end;
end;

procedure TatClassesLibrary.__TCollectionEnumeratorCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TCollectionEnumeratorClass(CurrentClass.ClassRef).Create(TCollection(VarToObject(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TCollectionEnumeratorGetCurrent(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TCollectionEnumerator(CurrentObject).GetCurrent);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TCollectionEnumeratorMoveNext(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TCollectionEnumerator(CurrentObject).MoveNext;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__GetTCollectionEnumeratorCurrent(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(TCollectionEnumerator(CurrentObject).Current));
  end;
end;

procedure TatClassesLibrary.__TCollectionDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCollection(CurrentObject).Destroy;
  end;
end;

procedure TatClassesLibrary.__TCollectionOwner(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TCollection(CurrentObject).Owner);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TCollectionAdd(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TCollection(CurrentObject).Add);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TCollectionAssign(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCollection(CurrentObject).Assign(TPersistent(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatClassesLibrary.__TCollectionBeginUpdate(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCollection(CurrentObject).BeginUpdate;
  end;
end;

procedure TatClassesLibrary.__TCollectionClear(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCollection(CurrentObject).Clear;
  end;
end;

procedure TatClassesLibrary.__TCollectionDelete(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCollection(CurrentObject).Delete(VarToInteger(GetInputArg(0)));
  end;
end;

procedure TatClassesLibrary.__TCollectionEndUpdate(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCollection(CurrentObject).EndUpdate;
  end;
end;

procedure TatClassesLibrary.__TCollectionFindItemID(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TCollection(CurrentObject).FindItemID(VarToInteger(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TCollectionGetEnumerator(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TCollection(CurrentObject).GetEnumerator);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TCollectionGetNamePath(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(TCollection(CurrentObject).GetNamePath);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TCollectionInsert(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TCollection(CurrentObject).Insert(VarToInteger(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__GetTCollectionCapacity(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TCollection(CurrentObject).Capacity));
  end;
end;

procedure TatClassesLibrary.__SetTCollectionCapacity(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCollection(CurrentObject).Capacity:=VarToInteger(GetInputArg(0));
  end;
end;

procedure TatClassesLibrary.__GetTCollectionCount(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TCollection(CurrentObject).Count));
  end;
end;

procedure TatClassesLibrary.__GetTCollectionItems(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(TCollection(CurrentObject).Items[VarToInteger(GetArrayIndex(0))]));
  end;
end;

procedure TatClassesLibrary.__SetTCollectionItems(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCollection(CurrentObject).Items[VarToInteger(GetArrayIndex(0))]:=TCollectionItem(VarToObject(GetInputArg(0)));
  end;
end;

procedure TatClassesLibrary.__TStringsEnumeratorCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TStringsEnumeratorClass(CurrentClass.ClassRef).Create(TStrings(VarToObject(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TStringsEnumeratorGetCurrent(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(TStringsEnumerator(CurrentObject).GetCurrent);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TStringsEnumeratorMoveNext(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TStringsEnumerator(CurrentObject).MoveNext;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__GetTStringsEnumeratorCurrent(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(string(TStringsEnumerator(CurrentObject).Current));
  end;
end;

procedure TatClassesLibrary.__TStringsCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TStringsClass(CurrentClass.ClassRef).Create);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TStringsDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStrings(CurrentObject).Destroy;
  end;
end;

procedure TatClassesLibrary.__TStringsAdd(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TStrings(CurrentObject).Add(VarToStr(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TStringsAddObject(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TStrings(CurrentObject).AddObject(VarToStr(GetInputArg(0)),TObject(VarToObject(GetInputArg(1)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TStringsAppend(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStrings(CurrentObject).Append(VarToStr(GetInputArg(0)));
  end;
end;

procedure TatClassesLibrary.__TStringsAddStrings(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStrings(CurrentObject).AddStrings(TStrings(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatClassesLibrary.__TStringsAssign(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStrings(CurrentObject).Assign(TPersistent(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatClassesLibrary.__TStringsBeginUpdate(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStrings(CurrentObject).BeginUpdate;
  end;
end;

procedure TatClassesLibrary.__TStringsClear(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStrings(CurrentObject).Clear;
  end;
end;

procedure TatClassesLibrary.__TStringsDelete(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStrings(CurrentObject).Delete(VarToInteger(GetInputArg(0)));
  end;
end;

procedure TatClassesLibrary.__TStringsEndUpdate(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStrings(CurrentObject).EndUpdate;
  end;
end;

procedure TatClassesLibrary.__TStringsEquals(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TStrings(CurrentObject).Equals(TStrings(VarToObject(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TStringsExchange(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStrings(CurrentObject).Exchange(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)));
  end;
end;

procedure TatClassesLibrary.__TStringsGetEnumerator(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TStrings(CurrentObject).GetEnumerator);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TStringsGetText(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(TStrings(CurrentObject).GetText);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TStringsIndexOf(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TStrings(CurrentObject).IndexOf(VarToStr(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TStringsIndexOfName(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TStrings(CurrentObject).IndexOfName(VarToStr(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TStringsIndexOfObject(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TStrings(CurrentObject).IndexOfObject(TObject(VarToObject(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TStringsInsert(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStrings(CurrentObject).Insert(VarToInteger(GetInputArg(0)),VarToStr(GetInputArg(1)));
  end;
end;

procedure TatClassesLibrary.__TStringsInsertObject(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStrings(CurrentObject).InsertObject(VarToInteger(GetInputArg(0)),VarToStr(GetInputArg(1)),TObject(VarToObject(GetInputArg(2))));
  end;
end;

procedure TatClassesLibrary.__TStringsLoadFromFile(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStrings(CurrentObject).LoadFromFile(VarToStr(GetInputArg(0)));
  end;
end;

procedure TatClassesLibrary.__TStringsLoadFromStream(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStrings(CurrentObject).LoadFromStream(TStream(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatClassesLibrary.__TStringsMove(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStrings(CurrentObject).Move(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)));
  end;
end;

procedure TatClassesLibrary.__TStringsSaveToFile(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStrings(CurrentObject).SaveToFile(VarToStr(GetInputArg(0)));
  end;
end;

procedure TatClassesLibrary.__TStringsSaveToStream(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStrings(CurrentObject).SaveToStream(TStream(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatClassesLibrary.__TStringsSetText(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStrings(CurrentObject).SetText(PChar(VarToStr(GetInputArg(0))));
  end;
end;

procedure TatClassesLibrary.__GetTStringsCapacity(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TStrings(CurrentObject).Capacity));
  end;
end;

procedure TatClassesLibrary.__SetTStringsCapacity(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStrings(CurrentObject).Capacity:=VarToInteger(GetInputArg(0));
  end;
end;

procedure TatClassesLibrary.__GetTStringsCommaText(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(string(TStrings(CurrentObject).CommaText));
  end;
end;

procedure TatClassesLibrary.__SetTStringsCommaText(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStrings(CurrentObject).CommaText:=VarToStr(GetInputArg(0));
  end;
end;

procedure TatClassesLibrary.__GetTStringsCount(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TStrings(CurrentObject).Count));
  end;
end;

procedure TatClassesLibrary.__GetTStringsDefaultEncoding(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(TStrings(CurrentObject).DefaultEncoding));
  end;
end;

procedure TatClassesLibrary.__SetTStringsDefaultEncoding(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStrings(CurrentObject).DefaultEncoding:=TEncoding(VarToObject(GetInputArg(0)));
  end;
end;

procedure TatClassesLibrary.__GetTStringsDelimiter(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TStrings(CurrentObject).Delimiter);
  end;
end;

procedure TatClassesLibrary.__SetTStringsDelimiter(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStrings(CurrentObject).Delimiter:=VarToStr(GetInputArg(0))[1];
  end;
end;

procedure TatClassesLibrary.__GetTStringsDelimitedText(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(string(TStrings(CurrentObject).DelimitedText));
  end;
end;

procedure TatClassesLibrary.__SetTStringsDelimitedText(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStrings(CurrentObject).DelimitedText:=VarToStr(GetInputArg(0));
  end;
end;

procedure TatClassesLibrary.__GetTStringsEncoding(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(TStrings(CurrentObject).Encoding));
  end;
end;

procedure TatClassesLibrary.__GetTStringsLineBreak(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(string(TStrings(CurrentObject).LineBreak));
  end;
end;

procedure TatClassesLibrary.__SetTStringsLineBreak(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStrings(CurrentObject).LineBreak:=VarToStr(GetInputArg(0));
  end;
end;

procedure TatClassesLibrary.__GetTStringsNames(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(string(TStrings(CurrentObject).Names[VarToInteger(GetArrayIndex(0))]));
  end;
end;

procedure TatClassesLibrary.__GetTStringsObjects(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(TStrings(CurrentObject).Objects[VarToInteger(GetArrayIndex(0))]));
  end;
end;

procedure TatClassesLibrary.__SetTStringsObjects(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStrings(CurrentObject).Objects[VarToInteger(GetArrayIndex(0))]:=TObject(VarToObject(GetInputArg(0)));
  end;
end;

procedure TatClassesLibrary.__GetTStringsQuoteChar(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TStrings(CurrentObject).QuoteChar);
  end;
end;

procedure TatClassesLibrary.__SetTStringsQuoteChar(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStrings(CurrentObject).QuoteChar:=VarToStr(GetInputArg(0))[1];
  end;
end;

procedure TatClassesLibrary.__GetTStringsValues(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(string(TStrings(CurrentObject).Values[VarToStr(GetArrayIndex(0))]));
  end;
end;

procedure TatClassesLibrary.__SetTStringsValues(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStrings(CurrentObject).Values[VarToStr(GetArrayIndex(0))]:=VarToStr(GetInputArg(0));
  end;
end;

procedure TatClassesLibrary.__GetTStringsValueFromIndex(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(string(TStrings(CurrentObject).ValueFromIndex[VarToInteger(GetArrayIndex(0))]));
  end;
end;

procedure TatClassesLibrary.__SetTStringsValueFromIndex(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStrings(CurrentObject).ValueFromIndex[VarToInteger(GetArrayIndex(0))]:=VarToStr(GetInputArg(0));
  end;
end;

procedure TatClassesLibrary.__GetTStringsNameValueSeparator(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TStrings(CurrentObject).NameValueSeparator);
  end;
end;

procedure TatClassesLibrary.__SetTStringsNameValueSeparator(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStrings(CurrentObject).NameValueSeparator:=VarToStr(GetInputArg(0))[1];
  end;
end;

procedure TatClassesLibrary.__GetTStringsStrictDelimiter(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TStrings(CurrentObject).StrictDelimiter);
  end;
end;

procedure TatClassesLibrary.__SetTStringsStrictDelimiter(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStrings(CurrentObject).StrictDelimiter:=GetInputArg(0);
  end;
end;

procedure TatClassesLibrary.__GetTStringsStrings(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(string(TStrings(CurrentObject).Strings[VarToInteger(GetArrayIndex(0))]));
  end;
end;

procedure TatClassesLibrary.__SetTStringsStrings(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStrings(CurrentObject).Strings[VarToInteger(GetArrayIndex(0))]:=VarToStr(GetInputArg(0));
  end;
end;

procedure TatClassesLibrary.__GetTStringsText(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(string(TStrings(CurrentObject).Text));
  end;
end;

procedure TatClassesLibrary.__SetTStringsText(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStrings(CurrentObject).Text:=VarToStr(GetInputArg(0));
  end;
end;

procedure TatClassesLibrary.__GetTStringsWriteBOM(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TStrings(CurrentObject).WriteBOM);
  end;
end;

procedure TatClassesLibrary.__SetTStringsWriteBOM(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStrings(CurrentObject).WriteBOM:=GetInputArg(0);
  end;
end;

procedure TatClassesLibrary.__TStringListCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TStringListClass(CurrentClass.ClassRef).Create);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TStringListDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStringList(CurrentObject).Destroy;
  end;
end;

procedure TatClassesLibrary.__TStringListAdd(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TStringList(CurrentObject).Add(VarToStr(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TStringListAddObject(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TStringList(CurrentObject).AddObject(VarToStr(GetInputArg(0)),TObject(VarToObject(GetInputArg(1)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TStringListAssign(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStringList(CurrentObject).Assign(TPersistent(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatClassesLibrary.__TStringListClear(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStringList(CurrentObject).Clear;
  end;
end;

procedure TatClassesLibrary.__TStringListDelete(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStringList(CurrentObject).Delete(VarToInteger(GetInputArg(0)));
  end;
end;

procedure TatClassesLibrary.__TStringListExchange(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStringList(CurrentObject).Exchange(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)));
  end;
end;

procedure TatClassesLibrary.__TStringListFind(AMachine: TatVirtualMachine);
  var
  Param1: Integer;
  AResult: variant;
begin
  with AMachine do
  begin
Param1 := VarToInteger(GetInputArg(1));
AResult := TStringList(CurrentObject).Find(VarToStr(GetInputArg(0)),Param1);
    ReturnOutputArg(AResult);
    SetInputArg(1,Integer(Param1));
  end;
end;

procedure TatClassesLibrary.__TStringListIndexOf(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TStringList(CurrentObject).IndexOf(VarToStr(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TStringListInsert(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStringList(CurrentObject).Insert(VarToInteger(GetInputArg(0)),VarToStr(GetInputArg(1)));
  end;
end;

procedure TatClassesLibrary.__TStringListInsertObject(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStringList(CurrentObject).InsertObject(VarToInteger(GetInputArg(0)),VarToStr(GetInputArg(1)),TObject(VarToObject(GetInputArg(2))));
  end;
end;

procedure TatClassesLibrary.__TStringListSort(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStringList(CurrentObject).Sort;
  end;
end;

procedure TatClassesLibrary.__GetTStringListDuplicates(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TStringList(CurrentObject).Duplicates));
  end;
end;

procedure TatClassesLibrary.__SetTStringListDuplicates(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStringList(CurrentObject).Duplicates:=TDuplicates(VarToInteger(GetInputArg(0)));
  end;
end;

procedure TatClassesLibrary.__GetTStringListSorted(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TStringList(CurrentObject).Sorted);
  end;
end;

procedure TatClassesLibrary.__SetTStringListSorted(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStringList(CurrentObject).Sorted:=GetInputArg(0);
  end;
end;

procedure TatClassesLibrary.__GetTStringListCaseSensitive(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TStringList(CurrentObject).CaseSensitive);
  end;
end;

procedure TatClassesLibrary.__SetTStringListCaseSensitive(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStringList(CurrentObject).CaseSensitive:=GetInputArg(0);
  end;
end;

procedure TatClassesLibrary.__GetTStringListOwnsObjects(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TStringList(CurrentObject).OwnsObjects);
  end;
end;

procedure TatClassesLibrary.__SetTStringListOwnsObjects(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStringList(CurrentObject).OwnsObjects:=GetInputArg(0);
  end;
end;

procedure TatClassesLibrary.__TStreamRead(AMachine: TatVirtualMachine);
  var
  Param0: Variant;
  AResult: variant;
begin
  with AMachine do
  begin
Param0 := GetInputArg(0);
AResult := Integer(TStream(CurrentObject).Read(Param0,VarToInteger(GetInputArg(1))));
    ReturnOutputArg(AResult);
    SetInputArg(0,Param0);
  end;
end;

procedure TatClassesLibrary.__TStreamWrite(AMachine: TatVirtualMachine);
  var
  Param0: Variant;
  AResult: variant;
begin
  with AMachine do
  begin
Param0 := GetInputArg(0);
AResult := Integer(TStream(CurrentObject).Write(Param0,VarToInteger(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TStreamSeek(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TStream(CurrentObject).Seek(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TStreamReadBuffer(AMachine: TatVirtualMachine);
  var
  Param0: Variant;
begin
  with AMachine do
  begin
Param0 := GetInputArg(0);
    TStream(CurrentObject).ReadBuffer(Param0,VarToInteger(GetInputArg(1)));
    SetInputArg(0,Param0);
  end;
end;

procedure TatClassesLibrary.__TStreamWriteBuffer(AMachine: TatVirtualMachine);
  var
  Param0: Variant;
begin
  with AMachine do
  begin
Param0 := GetInputArg(0);
    TStream(CurrentObject).WriteBuffer(Param0,VarToInteger(GetInputArg(1)));
  end;
end;

procedure TatClassesLibrary.__TStreamCopyFrom(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TStream(CurrentObject).CopyFrom(TStream(VarToObject(GetInputArg(0))),VarToInteger(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TStreamReadComponent(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TStream(CurrentObject).ReadComponent(TComponent(VarToObject(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TStreamReadComponentRes(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TStream(CurrentObject).ReadComponentRes(TComponent(VarToObject(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TStreamWriteComponent(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStream(CurrentObject).WriteComponent(TComponent(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatClassesLibrary.__TStreamWriteComponentRes(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStream(CurrentObject).WriteComponentRes(VarToStr(GetInputArg(0)),TComponent(VarToObject(GetInputArg(1))));
  end;
end;

procedure TatClassesLibrary.__TStreamWriteDescendent(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStream(CurrentObject).WriteDescendent(TComponent(VarToObject(GetInputArg(0))),TComponent(VarToObject(GetInputArg(1))));
  end;
end;

procedure TatClassesLibrary.__TStreamWriteDescendentRes(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStream(CurrentObject).WriteDescendentRes(VarToStr(GetInputArg(0)),TComponent(VarToObject(GetInputArg(1))),TComponent(VarToObject(GetInputArg(2))));
  end;
end;

procedure TatClassesLibrary.__TStreamWriteResourceHeader(AMachine: TatVirtualMachine);
  var
  Param1: Integer;
begin
  with AMachine do
  begin
Param1 := VarToInteger(GetInputArg(1));
    TStream(CurrentObject).WriteResourceHeader(VarToStr(GetInputArg(0)),Param1);
    SetInputArg(1,Integer(Param1));
  end;
end;

procedure TatClassesLibrary.__TStreamFixupResourceHeader(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStream(CurrentObject).FixupResourceHeader(VarToInteger(GetInputArg(0)));
  end;
end;

procedure TatClassesLibrary.__TStreamReadResHeader(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStream(CurrentObject).ReadResHeader;
  end;
end;

procedure TatClassesLibrary.__GetTStreamPosition(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TStream(CurrentObject).Position));
  end;
end;

procedure TatClassesLibrary.__SetTStreamPosition(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStream(CurrentObject).Position:=VarToInteger(GetInputArg(0));
  end;
end;

procedure TatClassesLibrary.__GetTStreamSize(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TStream(CurrentObject).Size));
  end;
end;

procedure TatClassesLibrary.__SetTStreamSize(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStream(CurrentObject).Size:=VarToInteger(GetInputArg(0));
  end;
end;

procedure TatClassesLibrary.__THandleStreamCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(THandleStreamClass(CurrentClass.ClassRef).Create(VarToInteger(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__THandleStreamRead(AMachine: TatVirtualMachine);
  var
  Param0: Variant;
  AResult: variant;
begin
  with AMachine do
  begin
Param0 := GetInputArg(0);
AResult := Integer(THandleStream(CurrentObject).Read(Param0,VarToInteger(GetInputArg(1))));
    ReturnOutputArg(AResult);
    SetInputArg(0,Param0);
  end;
end;

procedure TatClassesLibrary.__THandleStreamWrite(AMachine: TatVirtualMachine);
  var
  Param0: Variant;
  AResult: variant;
begin
  with AMachine do
  begin
Param0 := GetInputArg(0);
AResult := Integer(THandleStream(CurrentObject).Write(Param0,VarToInteger(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__GetTHandleStreamHandle(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(THandleStream(CurrentObject).Handle));
  end;
end;

procedure TatClassesLibrary.__TFileStreamCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TFileStreamClass(CurrentClass.ClassRef).Create(VarToStr(GetInputArg(0)),VarToInteger(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TFileStreamDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TFileStream(CurrentObject).Destroy;
  end;
end;

procedure TatClassesLibrary.__GetTFileStreamFileName(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(string(TFileStream(CurrentObject).FileName));
  end;
end;

procedure TatClassesLibrary.__TCustomMemoryStreamRead(AMachine: TatVirtualMachine);
  var
  Param0: Variant;
  AResult: variant;
begin
  with AMachine do
  begin
Param0 := GetInputArg(0);
AResult := Integer(TCustomMemoryStream(CurrentObject).Read(Param0,VarToInteger(GetInputArg(1))));
    ReturnOutputArg(AResult);
    SetInputArg(0,Param0);
  end;
end;

procedure TatClassesLibrary.__TCustomMemoryStreamSeek(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TCustomMemoryStream(CurrentObject).Seek(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TCustomMemoryStreamSaveToStream(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomMemoryStream(CurrentObject).SaveToStream(TStream(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatClassesLibrary.__TCustomMemoryStreamSaveToFile(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TCustomMemoryStream(CurrentObject).SaveToFile(VarToStr(GetInputArg(0)));
  end;
end;

procedure TatClassesLibrary.__TMemoryStreamDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TMemoryStream(CurrentObject).Destroy;
  end;
end;

procedure TatClassesLibrary.__TMemoryStreamClear(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TMemoryStream(CurrentObject).Clear;
  end;
end;

procedure TatClassesLibrary.__TMemoryStreamLoadFromStream(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TMemoryStream(CurrentObject).LoadFromStream(TStream(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatClassesLibrary.__TMemoryStreamLoadFromFile(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TMemoryStream(CurrentObject).LoadFromFile(VarToStr(GetInputArg(0)));
  end;
end;

procedure TatClassesLibrary.__TMemoryStreamSetSize(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TMemoryStream(CurrentObject).SetSize(VarToInteger(GetInputArg(0)));
  end;
end;

procedure TatClassesLibrary.__TMemoryStreamWrite(AMachine: TatVirtualMachine);
  var
  Param0: Variant;
  AResult: variant;
begin
  with AMachine do
  begin
Param0 := GetInputArg(0);
AResult := Integer(TMemoryStream(CurrentObject).Write(Param0,VarToInteger(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TStringStreamCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TStringStreamClass(CurrentClass.ClassRef).Create);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TStringStreamDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStringStream(CurrentObject).Destroy;
  end;
end;

procedure TatClassesLibrary.__TStringStreamReadString(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(TStringStream(CurrentObject).ReadString(VarToInteger(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TStringStreamWriteString(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStringStream(CurrentObject).WriteString(VarToStr(GetInputArg(0)));
  end;
end;

procedure TatClassesLibrary.__GetTStringStreamDataString(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(string(TStringStream(CurrentObject).DataString));
  end;
end;

procedure TatClassesLibrary.__GetTStringStreamEncoding(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(TStringStream(CurrentObject).Encoding));
  end;
end;

procedure TatClassesLibrary.__TResourceStreamCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TResourceStreamClass(CurrentClass.ClassRef).Create(VarToInteger(GetInputArg(0)),VarToStr(GetInputArg(1)),PChar(VarToStr(GetInputArg(2)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TResourceStreamCreateFromID(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TResourceStreamClass(CurrentClass.ClassRef).CreateFromID(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),PChar(VarToStr(GetInputArg(2)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TResourceStreamDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TResourceStream(CurrentObject).Destroy;
  end;
end;

procedure TatClassesLibrary.__TResourceStreamWrite(AMachine: TatVirtualMachine);
  var
  Param0: Variant;
  AResult: variant;
begin
  with AMachine do
  begin
Param0 := GetInputArg(0);
AResult := Integer(TResourceStream(CurrentObject).Write(Param0,VarToInteger(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TStreamAdapterCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
case InputArgCount of
1: AResult := ObjectToVar(TStreamAdapterClass(CurrentClass.ClassRef).Create(TStream(VarToObject(GetInputArg(0)))));
2: AResult := ObjectToVar(TStreamAdapterClass(CurrentClass.ClassRef).Create(TStream(VarToObject(GetInputArg(0))),TStreamOwnership(VarToInteger(GetInputArg(1)))));
end;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TStreamAdapterDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStreamAdapter(CurrentObject).Destroy;
  end;
end;

procedure TatClassesLibrary.__TStreamAdapterSeek(AMachine: TatVirtualMachine);
  var
  {$IF CompilerVersion >= 29}
  Param2: LargeUInt;
  {$ELSE}
  Param2: LargeInt;
  {$IFEND}
  AResult: variant;
begin
  with AMachine do
  begin
Param2 := VarToInteger(GetInputArg(2));
AResult := Integer(TStreamAdapter(CurrentObject).Seek(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),Param2));
    ReturnOutputArg(AResult);
    SetInputArg(2,Integer(Param2));
  end;
end;

procedure TatClassesLibrary.__TStreamAdapterSetSize(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TStreamAdapter(CurrentObject).SetSize(VarToInteger(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TStreamAdapterCommit(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TStreamAdapter(CurrentObject).Commit(VarToInteger(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TStreamAdapterRevert(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TStreamAdapter(CurrentObject).Revert);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TStreamAdapterLockRegion(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TStreamAdapter(CurrentObject).LockRegion(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TStreamAdapterUnlockRegion(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TStreamAdapter(CurrentObject).UnlockRegion(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__GetTStreamAdapterStream(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(TStreamAdapter(CurrentObject).Stream));
  end;
end;

procedure TatClassesLibrary.__GetTStreamAdapterStreamOwnership(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TStreamAdapter(CurrentObject).StreamOwnership));
  end;
end;

procedure TatClassesLibrary.__SetTStreamAdapterStreamOwnership(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStreamAdapter(CurrentObject).StreamOwnership:=TStreamOwnership(VarToInteger(GetInputArg(0)));
  end;
end;

procedure TatClassesLibrary.__TClassFinderDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TClassFinder(CurrentObject).Destroy;
  end;
end;

procedure TatClassesLibrary.__TFilerCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TFilerClass(CurrentClass.ClassRef).Create(TStream(VarToObject(GetInputArg(0))),VarToInteger(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TFilerDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TFiler(CurrentObject).Destroy;
  end;
end;

procedure TatClassesLibrary.__TFilerFlushBuffer(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TFiler(CurrentObject).FlushBuffer;
  end;
end;

procedure TatClassesLibrary.__GetTFilerRoot(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(TFiler(CurrentObject).Root));
  end;
end;

procedure TatClassesLibrary.__SetTFilerRoot(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TFiler(CurrentObject).Root:=TComponent(VarToObject(GetInputArg(0)));
  end;
end;

procedure TatClassesLibrary.__GetTFilerLookupRoot(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(TFiler(CurrentObject).LookupRoot));
  end;
end;

procedure TatClassesLibrary.__GetTFilerAncestor(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(TFiler(CurrentObject).Ancestor));
  end;
end;

procedure TatClassesLibrary.__SetTFilerAncestor(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TFiler(CurrentObject).Ancestor:=TPersistent(VarToObject(GetInputArg(0)));
  end;
end;

procedure TatClassesLibrary.__GetTFilerIgnoreChildren(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TFiler(CurrentObject).IgnoreChildren);
  end;
end;

procedure TatClassesLibrary.__SetTFilerIgnoreChildren(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TFiler(CurrentObject).IgnoreChildren:=GetInputArg(0);
  end;
end;

procedure TatClassesLibrary.__TReaderDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TReader(CurrentObject).Destroy;
  end;
end;

procedure TatClassesLibrary.__TReaderBeginReferences(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TReader(CurrentObject).BeginReferences;
  end;
end;

procedure TatClassesLibrary.__TReaderCheckValue(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TReader(CurrentObject).CheckValue(TValueType(VarToInteger(GetInputArg(0))));
  end;
end;

procedure TatClassesLibrary.__TReaderEndOfList(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TReader(CurrentObject).EndOfList;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TReaderEndReferences(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TReader(CurrentObject).EndReferences;
  end;
end;

procedure TatClassesLibrary.__TReaderFixupReferences(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TReader(CurrentObject).FixupReferences;
  end;
end;

procedure TatClassesLibrary.__TReaderFlushBuffer(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TReader(CurrentObject).FlushBuffer;
  end;
end;

procedure TatClassesLibrary.__TReaderNextValue(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TReader(CurrentObject).NextValue);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TReaderRead(AMachine: TatVirtualMachine);
  var
  Param0: Variant;
begin
  with AMachine do
  begin
Param0 := GetInputArg(0);
    TReader(CurrentObject).Read(Param0,VarToInteger(GetInputArg(1)));
    SetInputArg(0,Param0);
  end;
end;

procedure TatClassesLibrary.__TReaderReadBoolean(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TReader(CurrentObject).ReadBoolean;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TReaderReadChar(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TReader(CurrentObject).ReadChar;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TReaderReadWideChar(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := WideCharToString(PWideChar(WideString(TReader(CurrentObject).ReadWideChar)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TReaderReadCollection(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TReader(CurrentObject).ReadCollection(TCollection(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatClassesLibrary.__TReaderReadComponent(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TReader(CurrentObject).ReadComponent(TComponent(VarToObject(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TReaderReadFloat(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TReader(CurrentObject).ReadFloat;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TReaderReadSingle(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TReader(CurrentObject).ReadSingle;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TReaderReadDouble(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TReader(CurrentObject).ReadDouble;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TReaderReadCurrency(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TReader(CurrentObject).ReadCurrency;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TReaderReadDate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TReader(CurrentObject).ReadDate;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TReaderReadIdent(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(TReader(CurrentObject).ReadIdent);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TReaderReadInteger(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TReader(CurrentObject).ReadInteger);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TReaderReadInt64(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TReader(CurrentObject).ReadInt64);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TReaderReadListBegin(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TReader(CurrentObject).ReadListBegin;
  end;
end;

procedure TatClassesLibrary.__TReaderReadListEnd(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TReader(CurrentObject).ReadListEnd;
  end;
end;

procedure TatClassesLibrary.__TReaderReadPrefix(AMachine: TatVirtualMachine);
  var
  Param0: TFilerFlags;
  Param1: Integer;
  VarParam0Set: TFilerFlags;
begin
  with AMachine do
  begin
IntToSet(Param0, VarToInteger(GetInputArg(0)), SizeOf(Param0));
Param1 := VarToInteger(GetInputArg(1));
VarParam0Set := Param0;
    TReader(CurrentObject).ReadPrefix(Param0,Param1);
    SetInputArg(0,IntFromSet(VarParam0Set, SizeOf(VarParam0Set)));
    SetInputArg(1,Integer(Param1));
  end;
end;

procedure TatClassesLibrary.__TReaderReadRootComponent(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TReader(CurrentObject).ReadRootComponent(TComponent(VarToObject(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TReaderReadSignature(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TReader(CurrentObject).ReadSignature;
  end;
end;

procedure TatClassesLibrary.__TReaderReadStr(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(TReader(CurrentObject).ReadStr);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TReaderReadString(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(TReader(CurrentObject).ReadString);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TReaderReadWideString(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TReader(CurrentObject).ReadWideString;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TReaderReadValue(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TReader(CurrentObject).ReadValue);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TReaderReadVariant(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TReader(CurrentObject).ReadVariant;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TReaderCopyValue(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TReader(CurrentObject).CopyValue(TWriter(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatClassesLibrary.__TReaderSkipValue(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TReader(CurrentObject).SkipValue;
  end;
end;

procedure TatClassesLibrary.__GetTReaderOwner(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(TReader(CurrentObject).Owner));
  end;
end;

procedure TatClassesLibrary.__SetTReaderOwner(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TReader(CurrentObject).Owner:=TComponent(VarToObject(GetInputArg(0)));
  end;
end;

procedure TatClassesLibrary.__GetTReaderParent(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(TReader(CurrentObject).Parent));
  end;
end;

procedure TatClassesLibrary.__SetTReaderParent(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TReader(CurrentObject).Parent:=TComponent(VarToObject(GetInputArg(0)));
  end;
end;

procedure TatClassesLibrary.__GetTReaderPosition(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TReader(CurrentObject).Position));
  end;
end;

procedure TatClassesLibrary.__SetTReaderPosition(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TReader(CurrentObject).Position:=VarToInteger(GetInputArg(0));
  end;
end;

procedure TatClassesLibrary.__TWriterDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWriter(CurrentObject).Destroy;
  end;
end;

procedure TatClassesLibrary.__TWriterFlushBuffer(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWriter(CurrentObject).FlushBuffer;
  end;
end;

procedure TatClassesLibrary.__TWriterWrite(AMachine: TatVirtualMachine);
  var
  Param0: Variant;
begin
  with AMachine do
  begin
Param0 := GetInputArg(0);
    TWriter(CurrentObject).Write(Param0,VarToInteger(GetInputArg(1)));
  end;
end;

procedure TatClassesLibrary.__TWriterWriteBoolean(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWriter(CurrentObject).WriteBoolean(GetInputArg(0));
  end;
end;

procedure TatClassesLibrary.__TWriterWriteCollection(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWriter(CurrentObject).WriteCollection(TCollection(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatClassesLibrary.__TWriterWriteComponent(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWriter(CurrentObject).WriteComponent(TComponent(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatClassesLibrary.__TWriterWriteChar(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWriter(CurrentObject).WriteChar(VarToStr(GetInputArg(0))[1]);
  end;
end;

procedure TatClassesLibrary.__TWriterWriteWideChar(AMachine: TatVirtualMachine);
  var
  Param0Buf: array of WideChar;
begin
  with AMachine do
  begin
SetLength(Param0Buf, Length(VarToStr(GetInputArg(0))) + 1);
    TWriter(CurrentObject).WriteWideChar(StringToWideChar(VarToStr(GetInputArg(0)),@Param0Buf[0],Length(Param0Buf))^);
  end;
end;

procedure TatClassesLibrary.__TWriterWriteDescendent(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWriter(CurrentObject).WriteDescendent(TComponent(VarToObject(GetInputArg(0))),TComponent(VarToObject(GetInputArg(1))));
  end;
end;

procedure TatClassesLibrary.__TWriterWriteFloat(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWriter(CurrentObject).WriteFloat(GetInputArg(0));
  end;
end;

procedure TatClassesLibrary.__TWriterWriteSingle(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWriter(CurrentObject).WriteSingle(GetInputArg(0));
  end;
end;

procedure TatClassesLibrary.__TWriterWriteDouble(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWriter(CurrentObject).WriteDouble(GetInputArg(0));
  end;
end;

procedure TatClassesLibrary.__TWriterWriteCurrency(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWriter(CurrentObject).WriteCurrency(GetInputArg(0));
  end;
end;

procedure TatClassesLibrary.__TWriterWriteDate(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWriter(CurrentObject).WriteDate(GetInputArg(0));
  end;
end;

procedure TatClassesLibrary.__TWriterWriteIdent(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWriter(CurrentObject).WriteIdent(VarToStr(GetInputArg(0)));
  end;
end;

procedure TatClassesLibrary.__TWriterWriteInteger(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWriter(CurrentObject).WriteInteger(VarToInteger(GetInputArg(0)));
  end;
end;

procedure TatClassesLibrary.__TWriterWriteListBegin(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWriter(CurrentObject).WriteListBegin;
  end;
end;

procedure TatClassesLibrary.__TWriterWriteListEnd(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWriter(CurrentObject).WriteListEnd;
  end;
end;

procedure TatClassesLibrary.__TWriterWriteProperties(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWriter(CurrentObject).WriteProperties(TPersistent(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatClassesLibrary.__TWriterWriteRootComponent(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWriter(CurrentObject).WriteRootComponent(TComponent(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatClassesLibrary.__TWriterWriteSignature(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWriter(CurrentObject).WriteSignature;
  end;
end;

procedure TatClassesLibrary.__TWriterWriteStr(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWriter(CurrentObject).WriteStr(GetInputArg(0));
  end;
end;

procedure TatClassesLibrary.__TWriterWriteUTF8Str(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWriter(CurrentObject).WriteUTF8Str(VarToStr(GetInputArg(0)));
  end;
end;

procedure TatClassesLibrary.__TWriterWriteString(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWriter(CurrentObject).WriteString(GetInputArg(0));
  end;
end;

procedure TatClassesLibrary.__TWriterWriteWideString(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWriter(CurrentObject).WriteWideString(GetInputArg(0));
  end;
end;

procedure TatClassesLibrary.__TWriterWriteVariant(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWriter(CurrentObject).WriteVariant(GetInputArg(0));
  end;
end;

procedure TatClassesLibrary.__GetTWriterPosition(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TWriter(CurrentObject).Position));
  end;
end;

procedure TatClassesLibrary.__SetTWriterPosition(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWriter(CurrentObject).Position:=VarToInteger(GetInputArg(0));
  end;
end;

procedure TatClassesLibrary.__GetTWriterRootAncestor(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(TWriter(CurrentObject).RootAncestor));
  end;
end;

procedure TatClassesLibrary.__SetTWriterRootAncestor(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWriter(CurrentObject).RootAncestor:=TComponent(VarToObject(GetInputArg(0)));
  end;
end;

procedure TatClassesLibrary.__GetTWriterUseQualifiedNames(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TWriter(CurrentObject).UseQualifiedNames);
  end;
end;

procedure TatClassesLibrary.__SetTWriterUseQualifiedNames(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TWriter(CurrentObject).UseQualifiedNames:=GetInputArg(0);
  end;
end;

procedure TatClassesLibrary.__TParserDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TParser(CurrentObject).Destroy;
  end;
end;

procedure TatClassesLibrary.__TParserCheckToken(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TParser(CurrentObject).CheckToken(VarToStr(GetInputArg(0))[1]);
  end;
end;

procedure TatClassesLibrary.__TParserCheckTokenSymbol(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TParser(CurrentObject).CheckTokenSymbol(VarToStr(GetInputArg(0)));
  end;
end;

procedure TatClassesLibrary.__TParserError(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TParser(CurrentObject).Error(VarToStr(GetInputArg(0)));
  end;
end;

procedure TatClassesLibrary.__TParserErrorStr(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TParser(CurrentObject).ErrorStr(VarToStr(GetInputArg(0)));
  end;
end;

procedure TatClassesLibrary.__TParserHexToBinary(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TParser(CurrentObject).HexToBinary(TStream(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatClassesLibrary.__TParserNextToken(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TParser(CurrentObject).NextToken;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TParserSourcePos(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TParser(CurrentObject).SourcePos);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TParserTokenComponentIdent(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(TParser(CurrentObject).TokenComponentIdent);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TParserTokenFloat(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TParser(CurrentObject).TokenFloat;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TParserTokenInt(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TParser(CurrentObject).TokenInt);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TParserTokenString(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(TParser(CurrentObject).TokenString);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TParserTokenWideString(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TParser(CurrentObject).TokenWideString;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TParserTokenSymbolIs(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TParser(CurrentObject).TokenSymbolIs(VarToStr(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__GetTParserFloatType(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TParser(CurrentObject).FloatType);
  end;
end;

procedure TatClassesLibrary.__GetTParserSourceLine(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TParser(CurrentObject).SourceLine));
  end;
end;

procedure TatClassesLibrary.__GetTParserLinePos(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TParser(CurrentObject).LinePos));
  end;
end;

procedure TatClassesLibrary.__GetTParserToken(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TParser(CurrentObject).Token);
  end;
end;

procedure TatClassesLibrary.__TThreadCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TThreadClass(CurrentClass.ClassRef).Create);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TThreadDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TThread(CurrentObject).Destroy;
  end;
end;

procedure TatClassesLibrary.__TThreadAfterConstruction(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TThread(CurrentObject).AfterConstruction;
  end;
end;

procedure TatClassesLibrary.__TThreadResume(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TThread(CurrentObject).Resume;
  end;
end;

procedure TatClassesLibrary.__TThreadStart(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TThread(CurrentObject).Start;
  end;
end;

procedure TatClassesLibrary.__TThreadSuspend(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TThread(CurrentObject).Suspend;
  end;
end;

procedure TatClassesLibrary.__TThreadTerminate(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TThread(CurrentObject).Terminate;
  end;
end;

procedure TatClassesLibrary.__TThreadWaitFor(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TThread(CurrentObject).WaitFor);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TThreadCheckTerminated(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TThreadClass(CurrentClass.ClassRef).CheckTerminated;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TThreadSetReturnValue(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TThreadClass(CurrentClass.ClassRef).SetReturnValue(VarToInteger(GetInputArg(0)));
  end;
end;

procedure TatClassesLibrary.__TThreadRemoveQueuedEvents(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TThreadClass(CurrentClass.ClassRef).RemoveQueuedEvents(TThread(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatClassesLibrary.__TThreadNameThreadForDebugging(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    Case InputArgCount of
      1: TThreadClass(CurrentClass.ClassRef).NameThreadForDebugging(GetInputArg(0));
      2: TThreadClass(CurrentClass.ClassRef).NameThreadForDebugging(GetInputArg(0),GetInputArg(1));
    end;
  end;
end;

procedure TatClassesLibrary.__TThreadSpinWait(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TThreadClass(CurrentClass.ClassRef).SpinWait(VarToInteger(GetInputArg(0)));
  end;
end;

procedure TatClassesLibrary.__TThreadSleep(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TThreadClass(CurrentClass.ClassRef).Sleep(VarToInteger(GetInputArg(0)));
  end;
end;

procedure TatClassesLibrary.__TThreadYield(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TThreadClass(CurrentClass.ClassRef).Yield;
  end;
end;

procedure TatClassesLibrary.__GetTThreadExternalThread(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TThread(CurrentObject).ExternalThread);
  end;
end;

procedure TatClassesLibrary.__GetTThreadFatalException(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(TThread(CurrentObject).FatalException));
  end;
end;

procedure TatClassesLibrary.__GetTThreadFreeOnTerminate(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TThread(CurrentObject).FreeOnTerminate);
  end;
end;

procedure TatClassesLibrary.__SetTThreadFreeOnTerminate(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TThread(CurrentObject).FreeOnTerminate:=GetInputArg(0);
  end;
end;

procedure TatClassesLibrary.__GetTThreadFinished(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TThread(CurrentObject).Finished);
  end;
end;

procedure TatClassesLibrary.__GetTThreadHandle(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TThread(CurrentObject).Handle));
  end;
end;

procedure TatClassesLibrary.__GetTThreadPriority(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TThread(CurrentObject).Priority));
  end;
end;

procedure TatClassesLibrary.__SetTThreadPriority(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TThread(CurrentObject).Priority:=TThreadPriority(VarToInteger(GetInputArg(0)));
  end;
end;

procedure TatClassesLibrary.__GetTThreadSuspended(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TThread(CurrentObject).Suspended);
  end;
end;

procedure TatClassesLibrary.__SetTThreadSuspended(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TThread(CurrentObject).Suspended:=GetInputArg(0);
  end;
end;

procedure TatClassesLibrary.__GetTThreadThreadID(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TThread(CurrentObject).ThreadID);
  end;
end;

procedure TatClassesLibrary.__GetTThreadCurrentThread(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(TThread(CurrentObject).CurrentThread));
  end;
end;

procedure TatClassesLibrary.__GetTThreadProcessorCount(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TThread(CurrentObject).ProcessorCount));
  end;
end;

procedure TatClassesLibrary.__GetTThreadIsSingleProcessor(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TThread(CurrentObject).IsSingleProcessor);
  end;
end;

procedure TatClassesLibrary.__TComponentEnumeratorCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TComponentEnumeratorClass(CurrentClass.ClassRef).Create(TComponent(VarToObject(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TComponentEnumeratorGetCurrent(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TComponentEnumerator(CurrentObject).GetCurrent);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TComponentEnumeratorMoveNext(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TComponentEnumerator(CurrentObject).MoveNext;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__GetTComponentEnumeratorCurrent(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(TComponentEnumerator(CurrentObject).Current));
  end;
end;

procedure TatClassesLibrary.__TComponentCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TComponentClass(CurrentClass.ClassRef).Create(TComponent(VarToObject(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TComponentDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TComponent(CurrentObject).Destroy;
  end;
end;

procedure TatClassesLibrary.__TComponentBeforeDestruction(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TComponent(CurrentObject).BeforeDestruction;
  end;
end;

procedure TatClassesLibrary.__TComponentDestroyComponents(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TComponent(CurrentObject).DestroyComponents;
  end;
end;

procedure TatClassesLibrary.__TComponentDestroying(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TComponent(CurrentObject).Destroying;
  end;
end;

procedure TatClassesLibrary.__TComponentExecuteAction(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TComponent(CurrentObject).ExecuteAction(TBasicAction(VarToObject(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TComponentFindComponent(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TComponent(CurrentObject).FindComponent(VarToStr(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TComponentFreeNotification(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TComponent(CurrentObject).FreeNotification(TComponent(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatClassesLibrary.__TComponentRemoveFreeNotification(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TComponent(CurrentObject).RemoveFreeNotification(TComponent(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatClassesLibrary.__TComponentFreeOnRelease(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TComponent(CurrentObject).FreeOnRelease;
  end;
end;

procedure TatClassesLibrary.__TComponentGetEnumerator(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TComponent(CurrentObject).GetEnumerator);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TComponentGetParentComponent(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TComponent(CurrentObject).GetParentComponent);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TComponentGetNamePath(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(TComponent(CurrentObject).GetNamePath);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TComponentHasParent(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TComponent(CurrentObject).HasParent;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TComponentInsertComponent(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TComponent(CurrentObject).InsertComponent(TComponent(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatClassesLibrary.__TComponentRemoveComponent(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TComponent(CurrentObject).RemoveComponent(TComponent(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatClassesLibrary.__TComponentSetSubComponent(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TComponent(CurrentObject).SetSubComponent(GetInputArg(0));
  end;
end;

procedure TatClassesLibrary.__TComponentUpdateAction(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TComponent(CurrentObject).UpdateAction(TBasicAction(VarToObject(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__GetTComponentComponents(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(TComponent(CurrentObject).Components[VarToInteger(GetArrayIndex(0))]));
  end;
end;

procedure TatClassesLibrary.__GetTComponentComponentCount(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TComponent(CurrentObject).ComponentCount));
  end;
end;

procedure TatClassesLibrary.__GetTComponentComponentIndex(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TComponent(CurrentObject).ComponentIndex));
  end;
end;

procedure TatClassesLibrary.__SetTComponentComponentIndex(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TComponent(CurrentObject).ComponentIndex:=VarToInteger(GetInputArg(0));
  end;
end;

procedure TatClassesLibrary.__GetTComponentComponentState(AMachine: TatVirtualMachine);
var
PropValueSet: TComponentState;
begin
  with AMachine do
  begin
    PropValueSet := TComponent(CurrentObject).ComponentState;
    ReturnOutputArg(IntFromSet(PropValueSet, SizeOf(PropValueSet)));
  end;
end;

procedure TatClassesLibrary.__GetTComponentComponentStyle(AMachine: TatVirtualMachine);
var
PropValueSet: TComponentStyle;
begin
  with AMachine do
  begin
    PropValueSet := TComponent(CurrentObject).ComponentStyle;
    ReturnOutputArg(IntFromSet(PropValueSet, SizeOf(PropValueSet)));
  end;
end;

procedure TatClassesLibrary.__GetTComponentDesignInfo(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(TComponent(CurrentObject).DesignInfo));
  end;
end;

procedure TatClassesLibrary.__SetTComponentDesignInfo(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TComponent(CurrentObject).DesignInfo:=VarToInteger(GetInputArg(0));
  end;
end;

procedure TatClassesLibrary.__GetTComponentOwner(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(TComponent(CurrentObject).Owner));
  end;
end;

procedure TatClassesLibrary.__TBasicActionLinkCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TBasicActionLinkClass(CurrentClass.ClassRef).Create(TObject(VarToObject(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TBasicActionLinkDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TBasicActionLink(CurrentObject).Destroy;
  end;
end;

procedure TatClassesLibrary.__TBasicActionLinkExecute(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
case InputArgCount of
0: AResult := TBasicActionLink(CurrentObject).Execute;
1: AResult := TBasicActionLink(CurrentObject).Execute(TComponent(VarToObject(GetInputArg(0))));
end;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TBasicActionLinkUpdate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TBasicActionLink(CurrentObject).Update;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__GetTBasicActionLinkAction(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(TBasicActionLink(CurrentObject).Action));
  end;
end;

procedure TatClassesLibrary.__SetTBasicActionLinkAction(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TBasicActionLink(CurrentObject).Action:=TBasicAction(VarToObject(GetInputArg(0)));
  end;
end;

procedure TatClassesLibrary.__TBasicActionCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TBasicActionClass(CurrentClass.ClassRef).Create(TComponent(VarToObject(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TBasicActionDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TBasicAction(CurrentObject).Destroy;
  end;
end;

procedure TatClassesLibrary.__TBasicActionHandlesTarget(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TBasicAction(CurrentObject).HandlesTarget(TObject(VarToObject(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TBasicActionUpdateTarget(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TBasicAction(CurrentObject).UpdateTarget(TObject(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatClassesLibrary.__TBasicActionExecuteTarget(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TBasicAction(CurrentObject).ExecuteTarget(TObject(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatClassesLibrary.__TBasicActionExecute(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TBasicAction(CurrentObject).Execute;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TBasicActionRegisterChanges(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TBasicAction(CurrentObject).RegisterChanges(TBasicActionLink(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatClassesLibrary.__TBasicActionUnRegisterChanges(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TBasicAction(CurrentObject).UnRegisterChanges(TBasicActionLink(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatClassesLibrary.__TBasicActionUpdate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TBasicAction(CurrentObject).Update;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__GetTBasicActionActionComponent(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(TBasicAction(CurrentObject).ActionComponent));
  end;
end;

procedure TatClassesLibrary.__SetTBasicActionActionComponent(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TBasicAction(CurrentObject).ActionComponent:=TComponent(VarToObject(GetInputArg(0)));
  end;
end;

procedure TatClassesLibrary.__TDataModuleCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TDataModuleClass(CurrentClass.ClassRef).Create(TComponent(VarToObject(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TDataModuleCreateNew(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
case InputArgCount of
1: AResult := ObjectToVar(TDataModuleClass(CurrentClass.ClassRef).CreateNew(TComponent(VarToObject(GetInputArg(0)))));
2: AResult := ObjectToVar(TDataModuleClass(CurrentClass.ClassRef).CreateNew(TComponent(VarToObject(GetInputArg(0))),VarToInteger(GetInputArg(1))));
end;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TDataModuleDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TDataModule(CurrentObject).Destroy;
  end;
end;

procedure TatClassesLibrary.__TDataModuleAfterConstruction(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TDataModule(CurrentObject).AfterConstruction;
  end;
end;

procedure TatClassesLibrary.__TDataModuleBeforeDestruction(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TDataModule(CurrentObject).BeforeDestruction;
  end;
end;

procedure TatClassesLibrary.__GetTDataModuleDesignOffset(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TPointWrapper.Create(TDataModule(CurrentObject).DesignOffset)));
  end;
end;

procedure TatClassesLibrary.__SetTDataModuleDesignOffset(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TDataModule(CurrentObject).DesignOffset:=TPointWrapper(integer(GetInputArg(0))).ObjToRec;
  end;
end;

procedure TatClassesLibrary.__GetTDataModuleDesignSize(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(integer(TPointWrapper.Create(TDataModule(CurrentObject).DesignSize)));
  end;
end;

procedure TatClassesLibrary.__SetTDataModuleDesignSize(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TDataModule(CurrentObject).DesignSize:=TPointWrapper(integer(GetInputArg(0))).ObjToRec;
  end;
end;

procedure TatClassesLibrary.__TTextReaderClose(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TTextReader(CurrentObject).Close;
  end;
end;

procedure TatClassesLibrary.__TTextReaderPeek(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TTextReader(CurrentObject).Peek);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TTextReaderRead(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TTextReader(CurrentObject).Read);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TTextReaderReadLine(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(TTextReader(CurrentObject).ReadLine);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TTextReaderReadToEnd(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(TTextReader(CurrentObject).ReadToEnd);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TBinaryReaderCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
case InputArgCount of
1: AResult := ObjectToVar(TBinaryReaderClass(CurrentClass.ClassRef).Create(TStream(VarToObject(GetInputArg(0)))));
end;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TBinaryReaderDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TBinaryReader(CurrentObject).Destroy;
  end;
end;

procedure TatClassesLibrary.__TBinaryReaderClose(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TBinaryReader(CurrentObject).Close;
  end;
end;

procedure TatClassesLibrary.__TBinaryReaderPeekChar(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TBinaryReader(CurrentObject).PeekChar);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TBinaryReaderRead(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TBinaryReader(CurrentObject).Read);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TBinaryReaderReadBoolean(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TBinaryReader(CurrentObject).ReadBoolean;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TBinaryReaderReadByte(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TBinaryReader(CurrentObject).ReadByte);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TBinaryReaderReadChar(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TBinaryReader(CurrentObject).ReadChar;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TBinaryReaderReadDouble(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TBinaryReader(CurrentObject).ReadDouble;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TBinaryReaderReadShortInt(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TBinaryReader(CurrentObject).ReadShortInt);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TBinaryReaderReadInt16(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TBinaryReader(CurrentObject).ReadInt16);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TBinaryReaderReadInteger(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TBinaryReader(CurrentObject).ReadInteger);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TBinaryReaderReadInt32(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TBinaryReader(CurrentObject).ReadInt32);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TBinaryReaderReadInt64(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TBinaryReader(CurrentObject).ReadInt64);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TBinaryReaderReadSmallInt(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TBinaryReader(CurrentObject).ReadSmallInt);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TBinaryReaderReadSByte(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TBinaryReader(CurrentObject).ReadSByte);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TBinaryReaderReadSingle(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TBinaryReader(CurrentObject).ReadSingle;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TBinaryReaderReadString(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(TBinaryReader(CurrentObject).ReadString);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TBinaryReaderReadWord(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TBinaryReader(CurrentObject).ReadWord);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TBinaryReaderReadUInt16(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TBinaryReader(CurrentObject).ReadUInt16);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TBinaryReaderReadCardinal(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TBinaryReader(CurrentObject).ReadCardinal);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TBinaryReaderReadUInt32(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TBinaryReader(CurrentObject).ReadUInt32);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TBinaryReaderReadUInt64(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := TBinaryReader(CurrentObject).ReadUInt64;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__GetTBinaryReaderBaseStream(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(TBinaryReader(CurrentObject).BaseStream));
  end;
end;

procedure TatClassesLibrary.__TBinaryWriterCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TBinaryWriterClass(CurrentClass.ClassRef).Create(TStream(VarToObject(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TBinaryWriterDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TBinaryWriter(CurrentObject).Destroy;
  end;
end;

procedure TatClassesLibrary.__TBinaryWriterClose(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TBinaryWriter(CurrentObject).Close;
  end;
end;

procedure TatClassesLibrary.__TBinaryWriterSeek(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TBinaryWriter(CurrentObject).Seek(VarToInteger(GetInputArg(0)),TSeekOrigin(VarToInteger(GetInputArg(1)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TBinaryWriterWrite(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TBinaryWriter(CurrentObject).Write(VarToInteger(GetInputArg(0)));
  end;
end;

procedure TatClassesLibrary.__GetTBinaryWriterBaseStream(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(TBinaryWriter(CurrentObject).BaseStream));
  end;
end;

procedure TatClassesLibrary.__TStringReaderCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TStringReaderClass(CurrentClass.ClassRef).Create(VarToStr(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TStringReaderClose(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStringReader(CurrentObject).Close;
  end;
end;

procedure TatClassesLibrary.__TStringReaderPeek(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TStringReader(CurrentObject).Peek);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TStringReaderRead(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TStringReader(CurrentObject).Read);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TStringReaderReadLine(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(TStringReader(CurrentObject).ReadLine);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TStringReaderReadToEnd(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(TStringReader(CurrentObject).ReadToEnd);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TStreamReaderCreate(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(TStreamReaderClass(CurrentClass.ClassRef).Create(TStream(VarToObject(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TStreamReaderDestroy(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStreamReader(CurrentObject).Destroy;
  end;
end;

procedure TatClassesLibrary.__TStreamReaderClose(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStreamReader(CurrentObject).Close;
  end;
end;

procedure TatClassesLibrary.__TStreamReaderDiscardBufferedData(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStreamReader(CurrentObject).DiscardBufferedData;
  end;
end;

procedure TatClassesLibrary.__TStreamReaderOwnStream(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    TStreamReader(CurrentObject).OwnStream;
  end;
end;

procedure TatClassesLibrary.__TStreamReaderPeek(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TStreamReader(CurrentObject).Peek);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TStreamReaderRead(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(TStreamReader(CurrentObject).Read);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TStreamReaderReadLine(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(TStreamReader(CurrentObject).ReadLine);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__TStreamReaderReadToEnd(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(TStreamReader(CurrentObject).ReadToEnd);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__GetTStreamReaderBaseStream(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(TStreamReader(CurrentObject).BaseStream));
  end;
end;

procedure TatClassesLibrary.__GetTStreamReaderCurrentEncoding(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(ObjectToVar(TStreamReader(CurrentObject).CurrentEncoding));
  end;
end;

procedure TatClassesLibrary.__GetTStreamReaderEndOfStream(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(TStreamReader(CurrentObject).EndOfStream);
  end;
end;

procedure TatClassesDispatcher.__TNotifyEvent( Sender: TObject);
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TNotifyEvent(BeforeCall)(Sender);
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [Sender]);
    if AssignedMethod(AfterCall) then
      TNotifyEvent(AfterCall)(Sender);
  end;
end;

procedure TatClassesDispatcher.__TGetStrProc(const S: string);
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TGetStrProc(BeforeCall)(S);
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [S]);
    if AssignedMethod(AfterCall) then
      TGetStrProc(AfterCall)(S);
  end;
end;

procedure TatClassesDispatcher.__TGetModuleProc(const FileName: string; const UnitName: string; const FormName: string; const DesignClass: string;  CoClasses: TStrings);
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TGetModuleProc(BeforeCall)(FileName,UnitName,FormName,DesignClass,CoClasses);
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [FileName,UnitName,FormName,DesignClass,CoClasses]);
    if AssignedMethod(AfterCall) then
      TGetModuleProc(AfterCall)(FileName,UnitName,FormName,DesignClass,CoClasses);
  end;
end;

procedure TatClassesDispatcher.__TReaderProc( Reader: TReader);
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TReaderProc(BeforeCall)(Reader);
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [Reader]);
    if AssignedMethod(AfterCall) then
      TReaderProc(AfterCall)(Reader);
  end;
end;

procedure TatClassesDispatcher.__TWriterProc( Writer: TWriter);
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TWriterProc(BeforeCall)(Writer);
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [Writer]);
    if AssignedMethod(AfterCall) then
      TWriterProc(AfterCall)(Writer);
  end;
end;

procedure TatClassesDispatcher.__TStreamProc( Stream: TStream);
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TStreamProc(BeforeCall)(Stream);
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [Stream]);
    if AssignedMethod(AfterCall) then
      TStreamProc(AfterCall)(Stream);
  end;
end;

procedure TatClassesDispatcher.__TSetNameEvent( Reader: TReader;  Component: TComponent; var Name: string);
var
  NameTemp: variant;
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TSetNameEvent(BeforeCall)(Reader,Component,Name);
    NameTemp := string(Name);
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [Reader,Component,NameTemp]);
    Name := VarToStr(NameTemp);
    if AssignedMethod(AfterCall) then
      TSetNameEvent(AfterCall)(Reader,Component,Name);
  end;
end;

procedure TatClassesDispatcher.__TReferenceNameEvent( Reader: TReader; var Name: string);
var
  NameTemp: variant;
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TReferenceNameEvent(BeforeCall)(Reader,Name);
    NameTemp := string(Name);
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [Reader,NameTemp]);
    Name := VarToStr(NameTemp);
    if AssignedMethod(AfterCall) then
      TReferenceNameEvent(AfterCall)(Reader,Name);
  end;
end;

procedure TatClassesDispatcher.__TReadComponentsProc( Component: TComponent);
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TReadComponentsProc(BeforeCall)(Component);
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [Component]);
    if AssignedMethod(AfterCall) then
      TReadComponentsProc(AfterCall)(Component);
  end;
end;

procedure TatClassesDispatcher.__TReaderError( Reader: TReader; const Message: string; var Handled: Boolean);
var
  HandledTemp: variant;
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TReaderError(BeforeCall)(Reader,Message,Handled);
    HandledTemp := Handled;
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [Reader,Message,HandledTemp]);
    Handled := HandledTemp;
    if AssignedMethod(AfterCall) then
      TReaderError(AfterCall)(Reader,Message,Handled);
  end;
end;

procedure TatClassesDispatcher.__TFindAncestorEvent( Writer: TWriter;  Component: TComponent; const Name: string; var Ancestor: TComponent; var RootAncestor: TComponent);
var
  AncestorTemp: variant;
  RootAncestorTemp: variant;
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TFindAncestorEvent(BeforeCall)(Writer,Component,Name,Ancestor,RootAncestor);
    AncestorTemp := ObjectToVar(Ancestor);
    RootAncestorTemp := ObjectToVar(RootAncestor);
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [Writer,Component,Name,AncestorTemp,RootAncestorTemp]);
    Ancestor := TComponent(VarToObject(AncestorTemp));
    RootAncestor := TComponent(VarToObject(RootAncestorTemp));
    if AssignedMethod(AfterCall) then
      TFindAncestorEvent(AfterCall)(Writer,Component,Name,Ancestor,RootAncestor);
  end;
end;

procedure TatClassesDispatcher.__TGetLookupInfoEvent(var Ancestor: TPersistent; var Root: TComponent; var LookupRoot: TComponent; var RootAncestor: TComponent);
var
  AncestorTemp: variant;
  RootTemp: variant;
  LookupRootTemp: variant;
  RootAncestorTemp: variant;
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TGetLookupInfoEvent(BeforeCall)(Ancestor,Root,LookupRoot,RootAncestor);
    AncestorTemp := ObjectToVar(Ancestor);
    RootTemp := ObjectToVar(Root);
    LookupRootTemp := ObjectToVar(LookupRoot);
    RootAncestorTemp := ObjectToVar(RootAncestor);
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [AncestorTemp,RootTemp,LookupRootTemp,RootAncestorTemp]);
    Ancestor := TPersistent(VarToObject(AncestorTemp));
    Root := TComponent(VarToObject(RootTemp));
    LookupRoot := TComponent(VarToObject(LookupRootTemp));
    RootAncestor := TComponent(VarToObject(RootAncestorTemp));
    if AssignedMethod(AfterCall) then
      TGetLookupInfoEvent(AfterCall)(Ancestor,Root,LookupRoot,RootAncestor);
  end;
end;

procedure TatClassesDispatcher.__TParserErrorEvent( Sender: TObject; const Message: string; var Handled: Boolean);
var
  HandledTemp: variant;
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TParserErrorEvent(BeforeCall)(Sender,Message,Handled);
    HandledTemp := Handled;
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [Sender,Message,HandledTemp]);
    Handled := HandledTemp;
    if AssignedMethod(AfterCall) then
      TParserErrorEvent(AfterCall)(Sender,Message,Handled);
  end;
end;

procedure TatClassesDispatcher.__TThreadMethod();
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TThreadMethod(BeforeCall)();
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, []);
    if AssignedMethod(AfterCall) then
      TThreadMethod(AfterCall)();
  end;
end;

procedure TatClassesDispatcher.__TGetChildProc( Child: TComponent);
begin
  if DoOnExecuteEvent then
  begin
    if AssignedMethod(BeforeCall) then
      TGetChildProc(BeforeCall)(Child);
    if Assigned(Scripter) and (RoutineName > '') then
      Scripter.ExecuteSubroutine(RoutineName, [Child]);
    if AssignedMethod(AfterCall) then
      TGetChildProc(AfterCall)(Child);
  end;
end;

procedure TatClassesLibrary.__Point(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := integer(TPointWrapper.Create(Classes.Point(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__SmallPoint(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := integer(TSmallPointWrapper.Create(Classes.SmallPoint(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__PointsEqual(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Classes.PointsEqual(TPointWrapper(integer(GetInputArg(0))).ObjToRec,TPointWrapper(integer(GetInputArg(1))).ObjToRec);
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__InvalidPoint(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Classes.InvalidPoint(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__Rect(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := integer(TRectWrapper.Create(Classes.Rect(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2)),VarToInteger(GetInputArg(3)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__Bounds(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := integer(TRectWrapper.Create(Classes.Bounds(VarToInteger(GetInputArg(0)),VarToInteger(GetInputArg(1)),VarToInteger(GetInputArg(2)),VarToInteger(GetInputArg(3)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__UnRegisterModuleClasses(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    Classes.UnRegisterModuleClasses(VarToInteger(GetInputArg(0)));
  end;
end;

procedure TatClassesLibrary.__FindGlobalComponent(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(Classes.FindGlobalComponent(VarToStr(GetInputArg(0))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__IsUniqueGlobalComponentName(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Classes.IsUniqueGlobalComponentName(VarToStr(GetInputArg(0)));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__InitComponentRes(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Classes.InitComponentRes(VarToStr(GetInputArg(0)),TComponent(VarToObject(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__ReadComponentRes(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(Classes.ReadComponentRes(VarToStr(GetInputArg(0)),TComponent(VarToObject(GetInputArg(1)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__ReadComponentResEx(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(Classes.ReadComponentResEx(VarToInteger(GetInputArg(0)),VarToStr(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__ReadComponentResFile(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(Classes.ReadComponentResFile(VarToStr(GetInputArg(0)),TComponent(VarToObject(GetInputArg(1)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__WriteComponentResFile(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    Classes.WriteComponentResFile(VarToStr(GetInputArg(0)),TComponent(VarToObject(GetInputArg(1))));
  end;
end;

procedure TatClassesLibrary.__GlobalFixupReferences(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    Classes.GlobalFixupReferences;
  end;
end;

procedure TatClassesLibrary.__GetFixupReferenceNames(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    Classes.GetFixupReferenceNames(TComponent(VarToObject(GetInputArg(0))),TStrings(VarToObject(GetInputArg(1))));
  end;
end;

procedure TatClassesLibrary.__GetFixupInstanceNames(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    Classes.GetFixupInstanceNames(TComponent(VarToObject(GetInputArg(0))),VarToStr(GetInputArg(1)),TStrings(VarToObject(GetInputArg(2))));
  end;
end;

procedure TatClassesLibrary.__RedirectFixupReferences(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    Classes.RedirectFixupReferences(TComponent(VarToObject(GetInputArg(0))),VarToStr(GetInputArg(1)),VarToStr(GetInputArg(2)));
  end;
end;

procedure TatClassesLibrary.__RemoveFixupReferences(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    Classes.RemoveFixupReferences(TComponent(VarToObject(GetInputArg(0))),VarToStr(GetInputArg(1)));
  end;
end;

procedure TatClassesLibrary.__RemoveFixups(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    Classes.RemoveFixups(TPersistent(VarToObject(GetInputArg(0))));
  end;
end;

procedure TatClassesLibrary.__FindNestedComponent(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(Classes.FindNestedComponent(TComponent(VarToObject(GetInputArg(0))),VarToStr(GetInputArg(1))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__BeginGlobalLoading(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    Classes.BeginGlobalLoading;
  end;
end;

procedure TatClassesLibrary.__NotifyGlobalLoading(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    Classes.NotifyGlobalLoading;
  end;
end;

procedure TatClassesLibrary.__EndGlobalLoading(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    Classes.EndGlobalLoading;
  end;
end;

procedure TatClassesLibrary.__CollectionsEqual(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Classes.CollectionsEqual(TCollection(VarToObject(GetInputArg(0))),TCollection(VarToObject(GetInputArg(1))),TComponent(VarToObject(GetInputArg(2))),TComponent(VarToObject(GetInputArg(3))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__GetUltimateOwner(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := ObjectToVar(Classes.GetUltimateOwner(TCollectionItem(VarToObject(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__ObjectBinaryToText(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    Classes.ObjectBinaryToText(TStream(VarToObject(GetInputArg(0))),TStream(VarToObject(GetInputArg(1))));
  end;
end;

procedure TatClassesLibrary.__ObjectTextToBinary(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    Classes.ObjectTextToBinary(TStream(VarToObject(GetInputArg(0))),TStream(VarToObject(GetInputArg(1))));
  end;
end;

procedure TatClassesLibrary.__ObjectResourceToText(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    Classes.ObjectResourceToText(TStream(VarToObject(GetInputArg(0))),TStream(VarToObject(GetInputArg(1))));
  end;
end;

procedure TatClassesLibrary.__ObjectTextToResource(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    Classes.ObjectTextToResource(TStream(VarToObject(GetInputArg(0))),TStream(VarToObject(GetInputArg(1))));
  end;
end;

procedure TatClassesLibrary.__TestStreamFormat(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Integer(Classes.TestStreamFormat(TStream(VarToObject(GetInputArg(0)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__GetResourceName(AMachine: TatVirtualMachine);
  var
  Param1: string;
  AResult: variant;
begin
  with AMachine do
  begin
Param1 := VarToStr(GetInputArg(1));
AResult := Classes.GetResourceName(TStream(VarToObject(GetInputArg(0))),Param1);
    ReturnOutputArg(AResult);
    SetInputArg(1,string(Param1));
  end;
end;

procedure TatClassesLibrary.__WriteObjectResourceHeader(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    Classes.WriteObjectResourceHeader(TStream(VarToObject(GetInputArg(0))),TStream(VarToObject(GetInputArg(1))));
  end;
end;

procedure TatClassesLibrary.__LineStart(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := string(Classes.LineStart(PAnsiChar(AnsiString(VarToStr(GetInputArg(0)))),PAnsiChar(AnsiString(VarToStr(GetInputArg(1))))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__ExtractStrings(AMachine: TatVirtualMachine);
  var
  Param0: TSysCharSet;
  Param1: TSysCharSet;
  AResult: variant;
begin
  with AMachine do
  begin
IntToSet(Param0, VarToInteger(GetInputArg(0)), SizeOf(Param0));
IntToSet(Param1, VarToInteger(GetInputArg(1)), SizeOf(Param1));
AResult := Integer(Classes.ExtractStrings(Param0,Param1,PChar(VarToStr(GetInputArg(2))),TStrings(VarToObject(GetInputArg(3)))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__BinToHex(AMachine: TatVirtualMachine);
  var
  Param1Buf: array of WideChar;
begin
  with AMachine do
  begin
SetLength(Param1Buf, Length(VarToStr(GetInputArg(1))) + 1);
    Classes.BinToHex(PAnsiChar(AnsiString(VarToStr(GetInputArg(0)))),StringToWideChar(VarToStr(GetInputArg(1)),@Param1Buf[0],Length(Param1Buf)),VarToInteger(GetInputArg(2)));
  end;
end;

procedure TatClassesLibrary.__HexToBin(AMachine: TatVirtualMachine);
  var
  Param0Buf: array of WideChar;
  AResult: variant;
begin
  with AMachine do
  begin
SetLength(Param0Buf, Length(VarToStr(GetInputArg(0))) + 1);
AResult := Integer(Classes.HexToBin(StringToWideChar(VarToStr(GetInputArg(0)),@Param0Buf[0],Length(Param0Buf)),PAnsiChar(AnsiString(VarToStr(GetInputArg(1)))),VarToInteger(GetInputArg(2))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__CheckSynchronize(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
case InputArgCount of
0: AResult := Classes.CheckSynchronize;
1: AResult := Classes.CheckSynchronize(VarToInteger(GetInputArg(0)));
end;
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__DeallocateHWnd(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    Classes.DeallocateHWnd(VarToInteger(GetInputArg(0)));
  end;
end;

procedure TatClassesLibrary.__AncestorIsValid(AMachine: TatVirtualMachine);
  var
  AResult: variant;
begin
  with AMachine do
  begin
AResult := Classes.AncestorIsValid(TPersistent(VarToObject(GetInputArg(0))),TComponent(VarToObject(GetInputArg(1))),TComponent(VarToObject(GetInputArg(2))));
    ReturnOutputArg(AResult);
  end;
end;

procedure TatClassesLibrary.__GetCurrentGroup(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    ReturnOutputArg(Integer(Classes.CurrentGroup));
  end;
end;

procedure TatClassesLibrary.__SetCurrentGroup(AMachine: TatVirtualMachine);
begin
  with AMachine do
  begin
    Classes.CurrentGroup:=VarToInteger(GetInputArg(0));
  end;
end;

procedure TatClassesLibrary.Init;
begin
  With Scripter.DefineClass(EStreamError) do
  begin
  end;
  With Scripter.DefineClass(EFileStreamError) do
  begin
  end;
  With Scripter.DefineClass(EFCreateError) do
  begin
  end;
  With Scripter.DefineClass(EFOpenError) do
  begin
  end;
  With Scripter.DefineClass(EFilerError) do
  begin
  end;
  With Scripter.DefineClass(EReadError) do
  begin
  end;
  With Scripter.DefineClass(EWriteError) do
  begin
  end;
  With Scripter.DefineClass(EClassNotFound) do
  begin
  end;
  With Scripter.DefineClass(EMethodNotFound) do
  begin
  end;
  With Scripter.DefineClass(EInvalidImage) do
  begin
  end;
  With Scripter.DefineClass(EResNotFound) do
  begin
  end;
  With Scripter.DefineClass(EListError) do
  begin
  end;
  With Scripter.DefineClass(EBitsError) do
  begin
  end;
  With Scripter.DefineClass(EStringListError) do
  begin
  end;
  With Scripter.DefineClass(EComponentError) do
  begin
  end;
  With Scripter.DefineClass(EParserError) do
  begin
  end;
  With Scripter.DefineClass(EOutOfResources) do
  begin
  end;
  With Scripter.DefineClass(EInvalidOperation) do
  begin
  end;
  With Scripter.DefineClass(TListEnumerator) do
  begin
    DefineMethod('Create',1,tkClass,TListEnumerator,__TListEnumeratorCreate,true,0,'AList: TList');
    DefineMethod('MoveNext',0,tkVariant,nil,__TListEnumeratorMoveNext,false,0,'');
  end;
  With Scripter.DefineClass(TList) do
  begin
    DefineMethod('Destroy',0,tkNone,nil,__TListDestroy,false,0,'');
    DefineMethod('Clear',0,tkNone,nil,__TListClear,false,0,'');
    DefineMethod('Delete',1,tkNone,nil,__TListDelete,false,0,'Index: Integer');
    DefineMethod('Error',2,tkNone,nil,__TListError,true,0,'Msg: string; Data: Integer');
    DefineMethod('Exchange',2,tkNone,nil,__TListExchange,false,0,'Index1: Integer; Index2: Integer');
    DefineMethod('Expand',0,tkClass,TList,__TListExpand,false,0,'');
    DefineMethod('GetEnumerator',0,tkClass,TListEnumerator,__TListGetEnumerator,false,0,'');
    DefineMethod('Move',2,tkNone,nil,__TListMove,false,0,'CurIndex: Integer; NewIndex: Integer');
    DefineMethod('Pack',0,tkNone,nil,__TListPack,false,0,'');
    DefineMethod('Assign',3,tkNone,nil,__TListAssign,false,2,'ListA: TList; AOperator: TListAssignOp = laCopy; ListB: TList = nil');
    DefineProp('Capacity',tkInteger,__GetTListCapacity,__SetTListCapacity,nil,false,0);
    DefineProp('Count',tkInteger,__GetTListCount,__SetTListCount,nil,false,0);
  end;
  With Scripter.DefineClass(TThreadList) do
  begin
    DefineMethod('Create',0,tkClass,TThreadList,__TThreadListCreate,true,0,'');
    DefineMethod('Destroy',0,tkNone,nil,__TThreadListDestroy,false,0,'');
    DefineMethod('Clear',0,tkNone,nil,__TThreadListClear,false,0,'');
    DefineMethod('LockList',0,tkClass,TList,__TThreadListLockList,false,0,'');
    DefineMethod('UnlockList',0,tkNone,nil,__TThreadListUnlockList,false,0,'');
    DefineProp('Duplicates',tkEnumeration,__GetTThreadListDuplicates,__SetTThreadListDuplicates,nil,false,0);
  end;
  With Scripter.DefineClass(TInterfaceListEnumerator) do
  begin
    DefineMethod('Create',1,tkClass,TInterfaceListEnumerator,__TInterfaceListEnumeratorCreate,true,0,'AInterfaceList: TInterfaceList');
    DefineMethod('MoveNext',0,tkVariant,nil,__TInterfaceListEnumeratorMoveNext,false,0,'');
  end;
  With Scripter.DefineClass(TInterfaceList) do
  begin
    DefineMethod('Create',0,tkClass,TInterfaceList,__TInterfaceListCreate,true,0,'');
    DefineMethod('Destroy',0,tkNone,nil,__TInterfaceListDestroy,false,0,'');
    DefineMethod('Clear',0,tkNone,nil,__TInterfaceListClear,false,0,'');
    DefineMethod('Delete',1,tkNone,nil,__TInterfaceListDelete,false,0,'Index: Integer');
    DefineMethod('Exchange',2,tkNone,nil,__TInterfaceListExchange,false,0,'Index1: Integer; Index2: Integer');
    DefineMethod('Expand',0,tkClass,TInterfaceList,__TInterfaceListExpand,false,0,'');
    DefineMethod('Lock',0,tkNone,nil,__TInterfaceListLock,false,0,'');
    DefineMethod('Unlock',0,tkNone,nil,__TInterfaceListUnlock,false,0,'');
    DefineMethod('GetEnumerator',0,tkClass,TInterfaceListEnumerator,__TInterfaceListGetEnumerator,false,0,'');
    DefineProp('Capacity',tkInteger,__GetTInterfaceListCapacity,__SetTInterfaceListCapacity,nil,false,0);
    DefineProp('Count',tkInteger,__GetTInterfaceListCount,__SetTInterfaceListCount,nil,false,0);
  end;
  With Scripter.DefineClass(TBits) do
  begin
    DefineMethod('Destroy',0,tkNone,nil,__TBitsDestroy,false,0,'');
    DefineMethod('OpenBit',0,tkInteger,nil,__TBitsOpenBit,false,0,'');
    DefaultProperty := DefineProp('Bits',tkVariant,__GetTBitsBits,__SetTBitsBits,nil,false,1);
    DefineProp('Size',tkInteger,__GetTBitsSize,__SetTBitsSize,nil,false,0);
  end;
  With Scripter.DefineClass(TPersistent) do
  begin
    DefineMethod('Destroy',0,tkNone,nil,__TPersistentDestroy,false,0,'');
    DefineMethod('Assign',1,tkNone,nil,__TPersistentAssign,false,0,'Source: TPersistent');
    DefineMethod('GetNamePath',0,tkVariant,nil,__TPersistentGetNamePath,false,0,'');
  end;
  With Scripter.DefineClass(TInterfacedPersistent) do
  begin
    DefineMethod('QueryInterface',2,tkInteger,nil,__TInterfacedPersistentQueryInterface,false,0,'IID: TGUID; Obj').SetVarArgs([1]);
    DefineMethod('AfterConstruction',0,tkNone,nil,__TInterfacedPersistentAfterConstruction,false,0,'');
  end;
  With Scripter.DefineClass(TRecall) do
  begin
    DefineMethod('Create',2,tkClass,TRecall,__TRecallCreate,true,0,'AStorage: TPersistent; AReference: TPersistent');
    DefineMethod('Destroy',0,tkNone,nil,__TRecallDestroy,false,0,'');
    DefineMethod('Store',0,tkNone,nil,__TRecallStore,false,0,'');
    DefineMethod('Forget',0,tkNone,nil,__TRecallForget,false,0,'');
    DefineProp('Reference',tkClass,__GetTRecallReference,nil,TPersistent,false,0);
  end;
  With Scripter.DefineClass(TCollectionItem) do
  begin
    DefineMethod('Create',1,tkClass,TCollectionItem,__TCollectionItemCreate,true,0,'Collection: TCollection');
    DefineMethod('Destroy',0,tkNone,nil,__TCollectionItemDestroy,false,0,'');
    DefineMethod('GetNamePath',0,tkVariant,nil,__TCollectionItemGetNamePath,false,0,'');
    DefineProp('Collection',tkClass,__GetTCollectionItemCollection,__SetTCollectionItemCollection,TCollection,false,0);
    DefineProp('ID',tkInteger,__GetTCollectionItemID,nil,nil,false,0);
    DefineProp('Index',tkInteger,__GetTCollectionItemIndex,__SetTCollectionItemIndex,nil,false,0);
    DefineProp('DisplayName',tkVariant,__GetTCollectionItemDisplayName,__SetTCollectionItemDisplayName,nil,false,0);
  end;
  With Scripter.DefineClass(TCollectionEnumerator) do
  begin
    DefineMethod('Create',1,tkClass,TCollectionEnumerator,__TCollectionEnumeratorCreate,true,0,'ACollection: TCollection');
    DefineMethod('GetCurrent',0,tkClass,TCollectionItem,__TCollectionEnumeratorGetCurrent,false,0,'');
    DefineMethod('MoveNext',0,tkVariant,nil,__TCollectionEnumeratorMoveNext,false,0,'');
    DefineProp('Current',tkClass,__GetTCollectionEnumeratorCurrent,nil,TCollectionItem,false,0);
  end;
  With Scripter.DefineClass(TCollection) do
  begin
    DefineMethod('Destroy',0,tkNone,nil,__TCollectionDestroy,false,0,'');
    DefineMethod('Owner',0,tkClass,TPersistent,__TCollectionOwner,false,0,'');
    DefineMethod('Add',0,tkClass,TCollectionItem,__TCollectionAdd,false,0,'');
    DefineMethod('Assign',1,tkNone,nil,__TCollectionAssign,false,0,'Source: TPersistent');
    DefineMethod('BeginUpdate',0,tkNone,nil,__TCollectionBeginUpdate,false,0,'');
    DefineMethod('Clear',0,tkNone,nil,__TCollectionClear,false,0,'');
    DefineMethod('Delete',1,tkNone,nil,__TCollectionDelete,false,0,'Index: Integer');
    DefineMethod('EndUpdate',0,tkNone,nil,__TCollectionEndUpdate,false,0,'');
    DefineMethod('FindItemID',1,tkClass,TCollectionItem,__TCollectionFindItemID,false,0,'ID: Integer');
    DefineMethod('GetEnumerator',0,tkClass,TCollectionEnumerator,__TCollectionGetEnumerator,false,0,'');
    DefineMethod('GetNamePath',0,tkVariant,nil,__TCollectionGetNamePath,false,0,'');
    DefineMethod('Insert',1,tkClass,TCollectionItem,__TCollectionInsert,false,0,'Index: Integer');
    DefineProp('Capacity',tkInteger,__GetTCollectionCapacity,__SetTCollectionCapacity,nil,false,0);
    DefineProp('Count',tkInteger,__GetTCollectionCount,nil,nil,false,0);
    DefineProp('Items',tkClass,__GetTCollectionItems,__SetTCollectionItems,TCollectionItem,false,1);
  end;
  With Scripter.DefineClass(TOwnedCollection) do
  begin
  end;
  With Scripter.DefineClass(TStringsEnumerator) do
  begin
    DefineMethod('Create',1,tkClass,TStringsEnumerator,__TStringsEnumeratorCreate,true,0,'AStrings: TStrings');
    DefineMethod('GetCurrent',0,tkVariant,nil,__TStringsEnumeratorGetCurrent,false,0,'');
    DefineMethod('MoveNext',0,tkVariant,nil,__TStringsEnumeratorMoveNext,false,0,'');
    DefineProp('Current',tkVariant,__GetTStringsEnumeratorCurrent,nil,nil,false,0);
  end;
  With Scripter.DefineClass(TStrings) do
  begin
    DefineMethod('Create',0,tkClass,TStrings,__TStringsCreate,true,0,'');
    DefineMethod('Destroy',0,tkNone,nil,__TStringsDestroy,false,0,'');
    DefineMethod('Add',1,tkInteger,nil,__TStringsAdd,false,0,'S: string');
    DefineMethod('AddObject',2,tkInteger,nil,__TStringsAddObject,false,0,'S: string; AObject: TObject');
    DefineMethod('Append',1,tkNone,nil,__TStringsAppend,false,0,'S: string');
    DefineMethod('AddStrings',1,tkNone,nil,__TStringsAddStrings,false,0,'Strings: TStrings');
    DefineMethod('Assign',1,tkNone,nil,__TStringsAssign,false,0,'Source: TPersistent');
    DefineMethod('BeginUpdate',0,tkNone,nil,__TStringsBeginUpdate,false,0,'');
    DefineMethod('Clear',0,tkNone,nil,__TStringsClear,false,0,'');
    DefineMethod('Delete',1,tkNone,nil,__TStringsDelete,false,0,'Index: Integer');
    DefineMethod('EndUpdate',0,tkNone,nil,__TStringsEndUpdate,false,0,'');
    DefineMethod('Equals',1,tkVariant,nil,__TStringsEquals,false,0,'Strings: TStrings');
    DefineMethod('Exchange',2,tkNone,nil,__TStringsExchange,false,0,'Index1: Integer; Index2: Integer');
    DefineMethod('GetEnumerator',0,tkClass,TStringsEnumerator,__TStringsGetEnumerator,false,0,'');
    DefineMethod('GetText',0,tkVariant,nil,__TStringsGetText,false,0,'');
    DefineMethod('IndexOf',1,tkInteger,nil,__TStringsIndexOf,false,0,'S: string');
    DefineMethod('IndexOfName',1,tkInteger,nil,__TStringsIndexOfName,false,0,'Name: string');
    DefineMethod('IndexOfObject',1,tkInteger,nil,__TStringsIndexOfObject,false,0,'AObject: TObject');
    DefineMethod('Insert',2,tkNone,nil,__TStringsInsert,false,0,'Index: Integer; S: string');
    DefineMethod('InsertObject',3,tkNone,nil,__TStringsInsertObject,false,0,'Index: Integer; S: string; AObject: TObject');
    DefineMethod('LoadFromFile',1,tkNone,nil,__TStringsLoadFromFile,false,0,'FileName: string');
    DefineMethod('LoadFromStream',1,tkNone,nil,__TStringsLoadFromStream,false,0,'Stream: TStream');
    DefineMethod('Move',2,tkNone,nil,__TStringsMove,false,0,'CurIndex: Integer; NewIndex: Integer');
    DefineMethod('SaveToFile',1,tkNone,nil,__TStringsSaveToFile,false,0,'FileName: string');
    DefineMethod('SaveToStream',1,tkNone,nil,__TStringsSaveToStream,false,0,'Stream: TStream');
    DefineMethod('SetText',1,tkNone,nil,__TStringsSetText,false,0,'Text: PChar');
    DefineProp('Capacity',tkInteger,__GetTStringsCapacity,__SetTStringsCapacity,nil,false,0);
    DefineProp('CommaText',tkVariant,__GetTStringsCommaText,__SetTStringsCommaText,nil,false,0);
    DefineProp('Count',tkInteger,__GetTStringsCount,nil,nil,false,0);
    DefineProp('DefaultEncoding',tkClass,__GetTStringsDefaultEncoding,__SetTStringsDefaultEncoding,TEncoding,false,0);
    DefineProp('Delimiter',tkVariant,__GetTStringsDelimiter,__SetTStringsDelimiter,nil,false,0);
    DefineProp('DelimitedText',tkVariant,__GetTStringsDelimitedText,__SetTStringsDelimitedText,nil,false,0);
    DefineProp('Encoding',tkClass,__GetTStringsEncoding,nil,TEncoding,false,0);
    DefineProp('LineBreak',tkVariant,__GetTStringsLineBreak,__SetTStringsLineBreak,nil,false,0);
    DefineProp('Names',tkVariant,__GetTStringsNames,nil,nil,false,1);
    DefineProp('Objects',tkClass,__GetTStringsObjects,__SetTStringsObjects,TObject,false,1);
    DefineProp('QuoteChar',tkVariant,__GetTStringsQuoteChar,__SetTStringsQuoteChar,nil,false,0);
    DefineProp('Values',tkVariant,__GetTStringsValues,__SetTStringsValues,nil,false,1);
    DefineProp('ValueFromIndex',tkVariant,__GetTStringsValueFromIndex,__SetTStringsValueFromIndex,nil,false,1);
    DefineProp('NameValueSeparator',tkVariant,__GetTStringsNameValueSeparator,__SetTStringsNameValueSeparator,nil,false,0);
    DefineProp('StrictDelimiter',tkVariant,__GetTStringsStrictDelimiter,__SetTStringsStrictDelimiter,nil,false,0);
    DefaultProperty := DefineProp('Strings',tkVariant,__GetTStringsStrings,__SetTStringsStrings,nil,false,1);
    DefineProp('Text',tkVariant,__GetTStringsText,__SetTStringsText,nil,false,0);
    DefineProp('WriteBOM',tkVariant,__GetTStringsWriteBOM,__SetTStringsWriteBOM,nil,false,0);
  end;
  With Scripter.DefineClass(TStringList) do
  begin
    DefineMethod('Create',0,tkClass,TStringList,__TStringListCreate,true,0,'');
    DefineMethod('Destroy',0,tkNone,nil,__TStringListDestroy,false,0,'');
    DefineMethod('Add',1,tkInteger,nil,__TStringListAdd,false,0,'S: string');
    DefineMethod('AddObject',2,tkInteger,nil,__TStringListAddObject,false,0,'S: string; AObject: TObject');
    DefineMethod('Assign',1,tkNone,nil,__TStringListAssign,false,0,'Source: TPersistent');
    DefineMethod('Clear',0,tkNone,nil,__TStringListClear,false,0,'');
    DefineMethod('Delete',1,tkNone,nil,__TStringListDelete,false,0,'Index: Integer');
    DefineMethod('Exchange',2,tkNone,nil,__TStringListExchange,false,0,'Index1: Integer; Index2: Integer');
    DefineMethod('Find',2,tkVariant,nil,__TStringListFind,false,0,'S: string; Index: Integer').SetVarArgs([1]);
    DefineMethod('IndexOf',1,tkInteger,nil,__TStringListIndexOf,false,0,'S: string');
    DefineMethod('Insert',2,tkNone,nil,__TStringListInsert,false,0,'Index: Integer; S: string');
    DefineMethod('InsertObject',3,tkNone,nil,__TStringListInsertObject,false,0,'Index: Integer; S: string; AObject: TObject');
    DefineMethod('Sort',0,tkNone,nil,__TStringListSort,false,0,'');
    DefineProp('Duplicates',tkEnumeration,__GetTStringListDuplicates,__SetTStringListDuplicates,nil,false,0);
    DefineProp('Sorted',tkVariant,__GetTStringListSorted,__SetTStringListSorted,nil,false,0);
    DefineProp('CaseSensitive',tkVariant,__GetTStringListCaseSensitive,__SetTStringListCaseSensitive,nil,false,0);
    DefineProp('OwnsObjects',tkVariant,__GetTStringListOwnsObjects,__SetTStringListOwnsObjects,nil,false,0);
  end;
  With Scripter.DefineClass(TStream) do
  begin
    DefineMethod('Read',2,tkInteger,nil,__TStreamRead,false,0,'Buffer; Count: Longint').SetVarArgs([0]);
    DefineMethod('Write',2,tkInteger,nil,__TStreamWrite,false,0,'Buffer; Count: Longint');
    DefineMethod('Seek',2,tkInteger,nil,__TStreamSeek,false,0,'Offset: Longint; Origin: Word');
    DefineMethod('ReadBuffer',2,tkNone,nil,__TStreamReadBuffer,false,0,'Buffer; Count: Longint').SetVarArgs([0]);
    DefineMethod('WriteBuffer',2,tkNone,nil,__TStreamWriteBuffer,false,0,'Buffer; Count: Longint');
    DefineMethod('CopyFrom',2,tkVariant,nil,__TStreamCopyFrom,false,0,'Source: TStream; Count: Int64');
    DefineMethod('ReadComponent',1,tkClass,TComponent,__TStreamReadComponent,false,0,'Instance: TComponent');
    DefineMethod('ReadComponentRes',1,tkClass,TComponent,__TStreamReadComponentRes,false,0,'Instance: TComponent');
    DefineMethod('WriteComponent',1,tkNone,nil,__TStreamWriteComponent,false,0,'Instance: TComponent');
    DefineMethod('WriteComponentRes',2,tkNone,nil,__TStreamWriteComponentRes,false,0,'ResName: string; Instance: TComponent');
    DefineMethod('WriteDescendent',2,tkNone,nil,__TStreamWriteDescendent,false,0,'Instance: TComponent; Ancestor: TComponent');
    DefineMethod('WriteDescendentRes',3,tkNone,nil,__TStreamWriteDescendentRes,false,0,'ResName: string; Instance: TComponent; Ancestor: TComponent');
    DefineMethod('WriteResourceHeader',2,tkNone,nil,__TStreamWriteResourceHeader,false,0,'ResName: string; FixupInfo: Integer').SetVarArgs([1]);
    DefineMethod('FixupResourceHeader',1,tkNone,nil,__TStreamFixupResourceHeader,false,0,'FixupInfo: Integer');
    DefineMethod('ReadResHeader',0,tkNone,nil,__TStreamReadResHeader,false,0,'');
    DefineProp('Position',tkVariant,__GetTStreamPosition,__SetTStreamPosition,nil,false,0);
    DefineProp('Size',tkVariant,__GetTStreamSize,__SetTStreamSize,nil,false,0);
  end;
  With Scripter.DefineClass(THandleStream) do
  begin
    DefineMethod('Create',1,tkClass,THandleStream,__THandleStreamCreate,true,0,'AHandle: Integer');
    DefineMethod('Read',2,tkInteger,nil,__THandleStreamRead,false,0,'Buffer; Count: Longint').SetVarArgs([0]);
    DefineMethod('Write',2,tkInteger,nil,__THandleStreamWrite,false,0,'Buffer; Count: Longint');
    DefineProp('Handle',tkInteger,__GetTHandleStreamHandle,nil,nil,false,0);
  end;
  With Scripter.DefineClass(TFileStream) do
  begin
    DefineMethod('Create',2,tkClass,TFileStream,__TFileStreamCreate,true,0,'AFileName: string; Mode: Word');
    DefineMethod('Destroy',0,tkNone,nil,__TFileStreamDestroy,false,0,'');
    DefineProp('FileName',tkVariant,__GetTFileStreamFileName,nil,nil,false,0);
  end;
  With Scripter.DefineClass(TCustomMemoryStream) do
  begin
    DefineMethod('Read',2,tkInteger,nil,__TCustomMemoryStreamRead,false,0,'Buffer; Count: Longint').SetVarArgs([0]);
    DefineMethod('Seek',2,tkInteger,nil,__TCustomMemoryStreamSeek,false,0,'Offset: Longint; Origin: Word');
    DefineMethod('SaveToStream',1,tkNone,nil,__TCustomMemoryStreamSaveToStream,false,0,'Stream: TStream');
    DefineMethod('SaveToFile',1,tkNone,nil,__TCustomMemoryStreamSaveToFile,false,0,'FileName: string');
  end;
  With Scripter.DefineClass(TMemoryStream) do
  begin
    DefineMethod('Destroy',0,tkNone,nil,__TMemoryStreamDestroy,false,0,'');
    DefineMethod('Clear',0,tkNone,nil,__TMemoryStreamClear,false,0,'');
    DefineMethod('LoadFromStream',1,tkNone,nil,__TMemoryStreamLoadFromStream,false,0,'Stream: TStream');
    DefineMethod('LoadFromFile',1,tkNone,nil,__TMemoryStreamLoadFromFile,false,0,'FileName: string');
    DefineMethod('SetSize',1,tkNone,nil,__TMemoryStreamSetSize,false,0,'NewSize: Longint');
    DefineMethod('Write',2,tkInteger,nil,__TMemoryStreamWrite,false,0,'Buffer; Count: Longint');
  end;
  With Scripter.DefineClass(TBytesStream) do
  begin
  end;
  With Scripter.DefineClass(TStringStream) do
  begin
    DefineMethod('Create',0,tkClass,TStringStream,__TStringStreamCreate,true,0,'');
    DefineMethod('Destroy',0,tkNone,nil,__TStringStreamDestroy,false,0,'');
    DefineMethod('ReadString',1,tkVariant,nil,__TStringStreamReadString,false,0,'Count: Longint');
    DefineMethod('WriteString',1,tkNone,nil,__TStringStreamWriteString,false,0,'AString: string');
    DefineProp('DataString',tkVariant,__GetTStringStreamDataString,nil,nil,false,0);
    DefineProp('Encoding',tkClass,__GetTStringStreamEncoding,nil,TEncoding,false,0);
  end;
  With Scripter.DefineClass(TResourceStream) do
  begin
    DefineMethod('Create',3,tkClass,TResourceStream,__TResourceStreamCreate,true,0,'Instance: THandle; ResName: string; ResType: PChar');
    DefineMethod('CreateFromID',3,tkClass,TResourceStream,__TResourceStreamCreateFromID,true,0,'Instance: THandle; ResID: Integer; ResType: PChar');
    DefineMethod('Destroy',0,tkNone,nil,__TResourceStreamDestroy,false,0,'');
    DefineMethod('Write',2,tkInteger,nil,__TResourceStreamWrite,false,0,'Buffer; Count: Longint');
  end;
  With Scripter.DefineClass(TStreamAdapter) do
  begin
    DefineMethod('Create',2,tkClass,TStreamAdapter,__TStreamAdapterCreate,true,1,'Stream: TStream; Ownership: TStreamOwnership = soReference');
    DefineMethod('Destroy',0,tkNone,nil,__TStreamAdapterDestroy,false,0,'');
    DefineMethod('Seek',3,tkInteger,nil,__TStreamAdapterSeek,false,0,'dlibMove: Largeint; dwOrigin: Longint; libNewPosition: Largeint').SetVarArgs([2]);
    DefineMethod('SetSize',1,tkInteger,nil,__TStreamAdapterSetSize,false,0,'libNewSize: Largeint');
    DefineMethod('Commit',1,tkInteger,nil,__TStreamAdapterCommit,false,0,'grfCommitFlags: Longint');
    DefineMethod('Revert',0,tkInteger,nil,__TStreamAdapterRevert,false,0,'');
    DefineMethod('LockRegion',3,tkInteger,nil,__TStreamAdapterLockRegion,false,0,'libOffset: Largeint; cb: Largeint; dwLockType: Longint');
    DefineMethod('UnlockRegion',3,tkInteger,nil,__TStreamAdapterUnlockRegion,false,0,'libOffset: Largeint; cb: Largeint; dwLockType: Longint');
    DefineProp('Stream',tkClass,__GetTStreamAdapterStream,nil,TStream,false,0);
    DefineProp('StreamOwnership',tkEnumeration,__GetTStreamAdapterStreamOwnership,__SetTStreamAdapterStreamOwnership,nil,false,0);
  end;
  With Scripter.DefineClass(TClassFinder) do
  begin
    DefineMethod('Destroy',0,tkNone,nil,__TClassFinderDestroy,false,0,'');
  end;
  With Scripter.DefineClass(TFiler) do
  begin
    DefineMethod('Create',2,tkClass,TFiler,__TFilerCreate,true,0,'Stream: TStream; BufSize: Integer');
    DefineMethod('Destroy',0,tkNone,nil,__TFilerDestroy,false,0,'');
    DefineMethod('FlushBuffer',0,tkNone,nil,__TFilerFlushBuffer,false,0,'');
    DefineProp('Root',tkClass,__GetTFilerRoot,__SetTFilerRoot,TComponent,false,0);
    DefineProp('LookupRoot',tkClass,__GetTFilerLookupRoot,nil,TComponent,false,0);
    DefineProp('Ancestor',tkClass,__GetTFilerAncestor,__SetTFilerAncestor,TPersistent,false,0);
    DefineProp('IgnoreChildren',tkVariant,__GetTFilerIgnoreChildren,__SetTFilerIgnoreChildren,nil,false,0);
  end;
  With Scripter.DefineClass(TReader) do
  begin
    DefineMethod('Destroy',0,tkNone,nil,__TReaderDestroy,false,0,'');
    DefineMethod('BeginReferences',0,tkNone,nil,__TReaderBeginReferences,false,0,'');
    DefineMethod('CheckValue',1,tkNone,nil,__TReaderCheckValue,false,0,'Value: TValueType');
    DefineMethod('EndOfList',0,tkVariant,nil,__TReaderEndOfList,false,0,'');
    DefineMethod('EndReferences',0,tkNone,nil,__TReaderEndReferences,false,0,'');
    DefineMethod('FixupReferences',0,tkNone,nil,__TReaderFixupReferences,false,0,'');
    DefineMethod('FlushBuffer',0,tkNone,nil,__TReaderFlushBuffer,false,0,'');
    DefineMethod('NextValue',0,tkEnumeration,nil,__TReaderNextValue,false,0,'');
    DefineMethod('Read',2,tkNone,nil,__TReaderRead,false,0,'Buf; Count: Longint').SetVarArgs([0]);
    DefineMethod('ReadBoolean',0,tkVariant,nil,__TReaderReadBoolean,false,0,'');
    DefineMethod('ReadChar',0,tkVariant,nil,__TReaderReadChar,false,0,'');
    DefineMethod('ReadWideChar',0,tkVariant,nil,__TReaderReadWideChar,false,0,'');
    DefineMethod('ReadCollection',1,tkNone,nil,__TReaderReadCollection,false,0,'Collection: TCollection');
    DefineMethod('ReadComponent',1,tkClass,TComponent,__TReaderReadComponent,false,0,'Component: TComponent');
    DefineMethod('ReadFloat',0,tkVariant,nil,__TReaderReadFloat,false,0,'');
    DefineMethod('ReadSingle',0,tkVariant,nil,__TReaderReadSingle,false,0,'');
    DefineMethod('ReadDouble',0,tkVariant,nil,__TReaderReadDouble,false,0,'');
    DefineMethod('ReadCurrency',0,tkVariant,nil,__TReaderReadCurrency,false,0,'');
    DefineMethod('ReadDate',0,tkVariant,nil,__TReaderReadDate,false,0,'');
    DefineMethod('ReadIdent',0,tkVariant,nil,__TReaderReadIdent,false,0,'');
    DefineMethod('ReadInteger',0,tkInteger,nil,__TReaderReadInteger,false,0,'');
    DefineMethod('ReadInt64',0,tkVariant,nil,__TReaderReadInt64,false,0,'');
    DefineMethod('ReadListBegin',0,tkNone,nil,__TReaderReadListBegin,false,0,'');
    DefineMethod('ReadListEnd',0,tkNone,nil,__TReaderReadListEnd,false,0,'');
    DefineMethod('ReadPrefix',2,tkNone,nil,__TReaderReadPrefix,false,0,'Flags: TFilerFlags; AChildPos: Integer').SetVarArgs([0,1]);
    DefineMethod('ReadRootComponent',1,tkClass,TComponent,__TReaderReadRootComponent,false,0,'Root: TComponent');
    DefineMethod('ReadSignature',0,tkNone,nil,__TReaderReadSignature,false,0,'');
    DefineMethod('ReadStr',0,tkVariant,nil,__TReaderReadStr,false,0,'');
    DefineMethod('ReadString',0,tkVariant,nil,__TReaderReadString,false,0,'');
    DefineMethod('ReadWideString',0,tkVariant,nil,__TReaderReadWideString,false,0,'');
    DefineMethod('ReadValue',0,tkEnumeration,nil,__TReaderReadValue,false,0,'');
    DefineMethod('ReadVariant',0,tkVariant,nil,__TReaderReadVariant,false,0,'');
    DefineMethod('CopyValue',1,tkNone,nil,__TReaderCopyValue,false,0,'Writer: TWriter');
    DefineMethod('SkipValue',0,tkNone,nil,__TReaderSkipValue,false,0,'');
    DefineProp('Owner',tkClass,__GetTReaderOwner,__SetTReaderOwner,TComponent,false,0);
    DefineProp('Parent',tkClass,__GetTReaderParent,__SetTReaderParent,TComponent,false,0);
    DefineProp('Position',tkInteger,__GetTReaderPosition,__SetTReaderPosition,nil,false,0);
  end;
  With Scripter.DefineClass(TWriter) do
  begin
    DefineMethod('Destroy',0,tkNone,nil,__TWriterDestroy,false,0,'');
    DefineMethod('FlushBuffer',0,tkNone,nil,__TWriterFlushBuffer,false,0,'');
    DefineMethod('Write',2,tkNone,nil,__TWriterWrite,false,0,'Buf; Count: Longint');
    DefineMethod('WriteBoolean',1,tkNone,nil,__TWriterWriteBoolean,false,0,'Value: Boolean');
    DefineMethod('WriteCollection',1,tkNone,nil,__TWriterWriteCollection,false,0,'Value: TCollection');
    DefineMethod('WriteComponent',1,tkNone,nil,__TWriterWriteComponent,false,0,'Component: TComponent');
    DefineMethod('WriteChar',1,tkNone,nil,__TWriterWriteChar,false,0,'Value: Char');
    DefineMethod('WriteWideChar',1,tkNone,nil,__TWriterWriteWideChar,false,0,'Value: WideChar');
    DefineMethod('WriteDescendent',2,tkNone,nil,__TWriterWriteDescendent,false,0,'Root: TComponent; AAncestor: TComponent');
    DefineMethod('WriteFloat',1,tkNone,nil,__TWriterWriteFloat,false,0,'Value: Extended');
    DefineMethod('WriteSingle',1,tkNone,nil,__TWriterWriteSingle,false,0,'Value: Single');
    DefineMethod('WriteDouble',1,tkNone,nil,__TWriterWriteDouble,false,0,'Value: Double');
    DefineMethod('WriteCurrency',1,tkNone,nil,__TWriterWriteCurrency,false,0,'Value: Currency');
    DefineMethod('WriteDate',1,tkNone,nil,__TWriterWriteDate,false,0,'Value: TDateTime');
    DefineMethod('WriteIdent',1,tkNone,nil,__TWriterWriteIdent,false,0,'Ident: string');
    DefineMethod('WriteInteger',1,tkNone,nil,__TWriterWriteInteger,false,0,'Value: Longint');
    DefineMethod('WriteListBegin',0,tkNone,nil,__TWriterWriteListBegin,false,0,'');
    DefineMethod('WriteListEnd',0,tkNone,nil,__TWriterWriteListEnd,false,0,'');
    DefineMethod('WriteProperties',1,tkNone,nil,__TWriterWriteProperties,false,0,'Instance: TPersistent');
    DefineMethod('WriteRootComponent',1,tkNone,nil,__TWriterWriteRootComponent,false,0,'Root: TComponent');
    DefineMethod('WriteSignature',0,tkNone,nil,__TWriterWriteSignature,false,0,'');
    DefineMethod('WriteStr',1,tkNone,nil,__TWriterWriteStr,false,0,'Value: AnsiString');
    DefineMethod('WriteUTF8Str',1,tkNone,nil,__TWriterWriteUTF8Str,false,0,'Value: string');
    DefineMethod('WriteString',1,tkNone,nil,__TWriterWriteString,false,0,'Value: UnicodeString');
    DefineMethod('WriteWideString',1,tkNone,nil,__TWriterWriteWideString,false,0,'Value: UnicodeString');
    DefineMethod('WriteVariant',1,tkNone,nil,__TWriterWriteVariant,false,0,'Value: Variant');
    DefineProp('Position',tkInteger,__GetTWriterPosition,__SetTWriterPosition,nil,false,0);
    DefineProp('RootAncestor',tkClass,__GetTWriterRootAncestor,__SetTWriterRootAncestor,TComponent,false,0);
    DefineProp('UseQualifiedNames',tkVariant,__GetTWriterUseQualifiedNames,__SetTWriterUseQualifiedNames,nil,false,0);
  end;
  With Scripter.DefineClass(TParser) do
  begin
    DefineMethod('Destroy',0,tkNone,nil,__TParserDestroy,false,0,'');
    DefineMethod('CheckToken',1,tkNone,nil,__TParserCheckToken,false,0,'T: Char');
    DefineMethod('CheckTokenSymbol',1,tkNone,nil,__TParserCheckTokenSymbol,false,0,'S: string');
    DefineMethod('Error',1,tkNone,nil,__TParserError,false,0,'Ident: string');
    DefineMethod('ErrorStr',1,tkNone,nil,__TParserErrorStr,false,0,'Message: string');
    DefineMethod('HexToBinary',1,tkNone,nil,__TParserHexToBinary,false,0,'Stream: TStream');
    DefineMethod('NextToken',0,tkVariant,nil,__TParserNextToken,false,0,'');
    DefineMethod('SourcePos',0,tkInteger,nil,__TParserSourcePos,false,0,'');
    DefineMethod('TokenComponentIdent',0,tkVariant,nil,__TParserTokenComponentIdent,false,0,'');
    DefineMethod('TokenFloat',0,tkVariant,nil,__TParserTokenFloat,false,0,'');
    DefineMethod('TokenInt',0,tkVariant,nil,__TParserTokenInt,false,0,'');
    DefineMethod('TokenString',0,tkVariant,nil,__TParserTokenString,false,0,'');
    DefineMethod('TokenWideString',0,tkVariant,nil,__TParserTokenWideString,false,0,'');
    DefineMethod('TokenSymbolIs',1,tkVariant,nil,__TParserTokenSymbolIs,false,0,'S: string');
    DefineProp('FloatType',tkVariant,__GetTParserFloatType,nil,nil,false,0);
    DefineProp('SourceLine',tkInteger,__GetTParserSourceLine,nil,nil,false,0);
    DefineProp('LinePos',tkInteger,__GetTParserLinePos,nil,nil,false,0);
    DefineProp('Token',tkVariant,__GetTParserToken,nil,nil,false,0);
  end;
  With Scripter.DefineClass(EThread) do
  begin
  end;
  With Scripter.DefineClass(EThreadExternalException) do
  begin
  end;
  With Scripter.DefineClass(TThread) do
  begin
    DefineMethod('Create',0,tkClass,TThread,__TThreadCreate,true,0,'');
    DefineMethod('Destroy',0,tkNone,nil,__TThreadDestroy,false,0,'');
    DefineMethod('AfterConstruction',0,tkNone,nil,__TThreadAfterConstruction,false,0,'');
    DefineMethod('Resume',0,tkNone,nil,__TThreadResume,false,0,'');
    DefineMethod('Start',0,tkNone,nil,__TThreadStart,false,0,'');
    DefineMethod('Suspend',0,tkNone,nil,__TThreadSuspend,false,0,'');
    DefineMethod('Terminate',0,tkNone,nil,__TThreadTerminate,false,0,'');
    DefineMethod('WaitFor',0,tkInteger,nil,__TThreadWaitFor,false,0,'');
    DefineMethod('CheckTerminated',0,tkVariant,nil,__TThreadCheckTerminated,true,0,'');
    DefineMethod('SetReturnValue',1,tkNone,nil,__TThreadSetReturnValue,true,0,'Value: Integer');
    DefineMethod('RemoveQueuedEvents',1,tkNone,nil,__TThreadRemoveQueuedEvents,true,0,'AThread: TThread');
    DefineMethod('NameThreadForDebugging',2,tkNone,nil,__TThreadNameThreadForDebugging,true,1,'AThreadName: AnsiString; AThreadID: TThreadID = TThreadID(-1)');
    DefineMethod('SpinWait',1,tkNone,nil,__TThreadSpinWait,true,0,'Iterations: Integer');
    DefineMethod('Sleep',1,tkNone,nil,__TThreadSleep,true,0,'Timeout: Integer');
    DefineMethod('Yield',0,tkNone,nil,__TThreadYield,true,0,'');
    DefineProp('ExternalThread',tkVariant,__GetTThreadExternalThread,nil,nil,false,0);
    DefineProp('FatalException',tkClass,__GetTThreadFatalException,nil,TObject,false,0);
    DefineProp('FreeOnTerminate',tkVariant,__GetTThreadFreeOnTerminate,__SetTThreadFreeOnTerminate,nil,false,0);
    DefineProp('Finished',tkVariant,__GetTThreadFinished,nil,nil,false,0);
    DefineProp('Handle',tkInteger,__GetTThreadHandle,nil,nil,false,0);
    DefineProp('Priority',tkEnumeration,__GetTThreadPriority,__SetTThreadPriority,nil,false,0);
    DefineProp('Suspended',tkVariant,__GetTThreadSuspended,__SetTThreadSuspended,nil,false,0);
    DefineProp('ThreadID',tkVariant,__GetTThreadThreadID,nil,nil,false,0);
    DefineProp('CurrentThread',tkClass,__GetTThreadCurrentThread,nil,TThread,false,0);
    DefineProp('ProcessorCount',tkInteger,__GetTThreadProcessorCount,nil,nil,false,0);
    DefineProp('IsSingleProcessor',tkVariant,__GetTThreadIsSingleProcessor,nil,nil,false,0);
  end;
  With Scripter.DefineClass(TComponentEnumerator) do
  begin
    DefineMethod('Create',1,tkClass,TComponentEnumerator,__TComponentEnumeratorCreate,true,0,'AComponent: TComponent');
    DefineMethod('GetCurrent',0,tkClass,TComponent,__TComponentEnumeratorGetCurrent,false,0,'');
    DefineMethod('MoveNext',0,tkVariant,nil,__TComponentEnumeratorMoveNext,false,0,'');
    DefineProp('Current',tkClass,__GetTComponentEnumeratorCurrent,nil,TComponent,false,0);
  end;
  With Scripter.DefineClass(TComponent) do
  begin
    DefineMethod('Create',1,tkClass,TComponent,__TComponentCreate,true,0,'AOwner: TComponent');
    DefineMethod('Destroy',0,tkNone,nil,__TComponentDestroy,false,0,'');
    DefineMethod('BeforeDestruction',0,tkNone,nil,__TComponentBeforeDestruction,false,0,'');
    DefineMethod('DestroyComponents',0,tkNone,nil,__TComponentDestroyComponents,false,0,'');
    DefineMethod('Destroying',0,tkNone,nil,__TComponentDestroying,false,0,'');
    DefineMethod('ExecuteAction',1,tkVariant,nil,__TComponentExecuteAction,false,0,'Action: TBasicAction');
    DefineMethod('FindComponent',1,tkClass,TComponent,__TComponentFindComponent,false,0,'AName: string');
    DefineMethod('FreeNotification',1,tkNone,nil,__TComponentFreeNotification,false,0,'AComponent: TComponent');
    DefineMethod('RemoveFreeNotification',1,tkNone,nil,__TComponentRemoveFreeNotification,false,0,'AComponent: TComponent');
    DefineMethod('FreeOnRelease',0,tkNone,nil,__TComponentFreeOnRelease,false,0,'');
    DefineMethod('GetEnumerator',0,tkClass,TComponentEnumerator,__TComponentGetEnumerator,false,0,'');
    DefineMethod('GetParentComponent',0,tkClass,TComponent,__TComponentGetParentComponent,false,0,'');
    DefineMethod('GetNamePath',0,tkVariant,nil,__TComponentGetNamePath,false,0,'');
    DefineMethod('HasParent',0,tkVariant,nil,__TComponentHasParent,false,0,'');
    DefineMethod('InsertComponent',1,tkNone,nil,__TComponentInsertComponent,false,0,'AComponent: TComponent');
    DefineMethod('RemoveComponent',1,tkNone,nil,__TComponentRemoveComponent,false,0,'AComponent: TComponent');
    DefineMethod('SetSubComponent',1,tkNone,nil,__TComponentSetSubComponent,false,0,'IsSubComponent: Boolean');
    DefineMethod('UpdateAction',1,tkVariant,nil,__TComponentUpdateAction,false,0,'Action: TBasicAction');
    DefineProp('Components',tkClass,__GetTComponentComponents,nil,TComponent,false,1);
    DefineProp('ComponentCount',tkInteger,__GetTComponentComponentCount,nil,nil,false,0);
    DefineProp('ComponentIndex',tkInteger,__GetTComponentComponentIndex,__SetTComponentComponentIndex,nil,false,0);
    DefineProp('ComponentState',tkInteger,__GetTComponentComponentState,nil,nil,false,0);
    DefineProp('ComponentStyle',tkInteger,__GetTComponentComponentStyle,nil,nil,false,0);
    DefineProp('DesignInfo',tkInteger,__GetTComponentDesignInfo,__SetTComponentDesignInfo,nil,false,0);
    DefineProp('Owner',tkClass,__GetTComponentOwner,nil,TComponent,false,0);
  end;
  With Scripter.DefineClass(TBasicActionLink) do
  begin
    DefineMethod('Create',1,tkClass,TBasicActionLink,__TBasicActionLinkCreate,true,0,'AClient: TObject');
    DefineMethod('Destroy',0,tkNone,nil,__TBasicActionLinkDestroy,false,0,'');
    DefineMethod('Execute',1,tkVariant,nil,__TBasicActionLinkExecute,false,1,'AComponent: TComponent = nil');
    DefineMethod('Update',0,tkVariant,nil,__TBasicActionLinkUpdate,false,0,'');
    DefineProp('Action',tkClass,__GetTBasicActionLinkAction,__SetTBasicActionLinkAction,TBasicAction,false,0);
  end;
  With Scripter.DefineClass(TBasicAction) do
  begin
    DefineMethod('Create',1,tkClass,TBasicAction,__TBasicActionCreate,true,0,'AOwner: TComponent');
    DefineMethod('Destroy',0,tkNone,nil,__TBasicActionDestroy,false,0,'');
    DefineMethod('HandlesTarget',1,tkVariant,nil,__TBasicActionHandlesTarget,false,0,'Target: TObject');
    DefineMethod('UpdateTarget',1,tkNone,nil,__TBasicActionUpdateTarget,false,0,'Target: TObject');
    DefineMethod('ExecuteTarget',1,tkNone,nil,__TBasicActionExecuteTarget,false,0,'Target: TObject');
    DefineMethod('Execute',0,tkVariant,nil,__TBasicActionExecute,false,0,'');
    DefineMethod('RegisterChanges',1,tkNone,nil,__TBasicActionRegisterChanges,false,0,'Value: TBasicActionLink');
    DefineMethod('UnRegisterChanges',1,tkNone,nil,__TBasicActionUnRegisterChanges,false,0,'Value: TBasicActionLink');
    DefineMethod('Update',0,tkVariant,nil,__TBasicActionUpdate,false,0,'');
    DefineProp('ActionComponent',tkClass,__GetTBasicActionActionComponent,__SetTBasicActionActionComponent,TComponent,false,0);
  end;
  With Scripter.DefineClass(TDataModule) do
  begin
    DefineMethod('Create',1,tkClass,TDataModule,__TDataModuleCreate,true,0,'AOwner: TComponent');
    DefineMethod('CreateNew',2,tkClass,TDataModule,__TDataModuleCreateNew,true,1,'AOwner: TComponent; Dummy: Integer = 0');
    DefineMethod('Destroy',0,tkNone,nil,__TDataModuleDestroy,false,0,'');
    DefineMethod('AfterConstruction',0,tkNone,nil,__TDataModuleAfterConstruction,false,0,'');
    DefineMethod('BeforeDestruction',0,tkNone,nil,__TDataModuleBeforeDestruction,false,0,'');
    DefineProp('DesignOffset',tkVariant,__GetTDataModuleDesignOffset,__SetTDataModuleDesignOffset,nil,false,0);
    DefineProp('DesignSize',tkVariant,__GetTDataModuleDesignSize,__SetTDataModuleDesignSize,nil,false,0);
  end;
  With Scripter.DefineClass(TTextReader) do
  begin
    DefineMethod('Close',0,tkNone,nil,__TTextReaderClose,false,0,'');
    DefineMethod('Peek',0,tkInteger,nil,__TTextReaderPeek,false,0,'');
    DefineMethod('Read',0,tkInteger,nil,__TTextReaderRead,false,0,'');
    DefineMethod('ReadLine',0,tkVariant,nil,__TTextReaderReadLine,false,0,'');
    DefineMethod('ReadToEnd',0,tkVariant,nil,__TTextReaderReadToEnd,false,0,'');
  end;
  With Scripter.DefineClass(TBinaryReader) do
  begin
    DefineMethod('Create',2,tkClass,TBinaryReader,__TBinaryReaderCreate,true,1,'Stream: TStream; AEncoding: TEncoding = nil');
    DefineMethod('Destroy',0,tkNone,nil,__TBinaryReaderDestroy,false,0,'');
    DefineMethod('Close',0,tkNone,nil,__TBinaryReaderClose,false,0,'');
    DefineMethod('PeekChar',0,tkInteger,nil,__TBinaryReaderPeekChar,false,0,'');
    DefineMethod('Read',0,tkInteger,nil,__TBinaryReaderRead,false,0,'');
    DefineMethod('ReadBoolean',0,tkVariant,nil,__TBinaryReaderReadBoolean,false,0,'');
    DefineMethod('ReadByte',0,tkInteger,nil,__TBinaryReaderReadByte,false,0,'');
    DefineMethod('ReadChar',0,tkVariant,nil,__TBinaryReaderReadChar,false,0,'');
    DefineMethod('ReadDouble',0,tkVariant,nil,__TBinaryReaderReadDouble,false,0,'');
    DefineMethod('ReadShortInt',0,tkInteger,nil,__TBinaryReaderReadShortInt,false,0,'');
    DefineMethod('ReadInt16',0,tkInteger,nil,__TBinaryReaderReadInt16,false,0,'');
    DefineMethod('ReadInteger',0,tkInteger,nil,__TBinaryReaderReadInteger,false,0,'');
    DefineMethod('ReadInt32',0,tkInteger,nil,__TBinaryReaderReadInt32,false,0,'');
    DefineMethod('ReadInt64',0,tkVariant,nil,__TBinaryReaderReadInt64,false,0,'');
    DefineMethod('ReadSmallInt',0,tkInteger,nil,__TBinaryReaderReadSmallInt,false,0,'');
    DefineMethod('ReadSByte',0,tkInteger,nil,__TBinaryReaderReadSByte,false,0,'');
    DefineMethod('ReadSingle',0,tkVariant,nil,__TBinaryReaderReadSingle,false,0,'');
    DefineMethod('ReadString',0,tkVariant,nil,__TBinaryReaderReadString,false,0,'');
    DefineMethod('ReadWord',0,tkInteger,nil,__TBinaryReaderReadWord,false,0,'');
    DefineMethod('ReadUInt16',0,tkInteger,nil,__TBinaryReaderReadUInt16,false,0,'');
    DefineMethod('ReadCardinal',0,tkInteger,nil,__TBinaryReaderReadCardinal,false,0,'');
    DefineMethod('ReadUInt32',0,tkInteger,nil,__TBinaryReaderReadUInt32,false,0,'');
    DefineMethod('ReadUInt64',0,tkVariant,nil,__TBinaryReaderReadUInt64,false,0,'');
    DefineProp('BaseStream',tkClass,__GetTBinaryReaderBaseStream,nil,TStream,false,0);
  end;
  With Scripter.DefineClass(TBinaryWriter) do
  begin
    DefineMethod('Create',1,tkClass,TBinaryWriter,__TBinaryWriterCreate,true,0,'Stream: TStream');
    DefineMethod('Destroy',0,tkNone,nil,__TBinaryWriterDestroy,false,0,'');
    DefineMethod('Close',0,tkNone,nil,__TBinaryWriterClose,false,0,'');
    DefineMethod('Seek',2,tkVariant,nil,__TBinaryWriterSeek,false,0,'Offset: Int64; Origin: TSeekOrigin');
    DefineMethod('Write',1,tkNone,nil,__TBinaryWriterWrite,false,0,'Value: Byte');
    DefineProp('BaseStream',tkClass,__GetTBinaryWriterBaseStream,nil,TStream,false,0);
  end;
  With Scripter.DefineClass(TStringReader) do
  begin
    DefineMethod('Create',1,tkClass,TStringReader,__TStringReaderCreate,true,0,'S: string');
    DefineMethod('Close',0,tkNone,nil,__TStringReaderClose,false,0,'');
    DefineMethod('Peek',0,tkInteger,nil,__TStringReaderPeek,false,0,'');
    DefineMethod('Read',0,tkInteger,nil,__TStringReaderRead,false,0,'');
    DefineMethod('ReadLine',0,tkVariant,nil,__TStringReaderReadLine,false,0,'');
    DefineMethod('ReadToEnd',0,tkVariant,nil,__TStringReaderReadToEnd,false,0,'');
  end;
  With Scripter.DefineClass(TStreamReader) do
  begin
    DefineMethod('Create',1,tkClass,TStreamReader,__TStreamReaderCreate,true,0,'Stream: TStream');
    DefineMethod('Destroy',0,tkNone,nil,__TStreamReaderDestroy,false,0,'');
    DefineMethod('Close',0,tkNone,nil,__TStreamReaderClose,false,0,'');
    DefineMethod('DiscardBufferedData',0,tkNone,nil,__TStreamReaderDiscardBufferedData,false,0,'');
    DefineMethod('OwnStream',0,tkNone,nil,__TStreamReaderOwnStream,false,0,'');
    DefineMethod('Peek',0,tkInteger,nil,__TStreamReaderPeek,false,0,'');
    DefineMethod('Read',0,tkInteger,nil,__TStreamReaderRead,false,0,'');
    DefineMethod('ReadLine',0,tkVariant,nil,__TStreamReaderReadLine,false,0,'');
    DefineMethod('ReadToEnd',0,tkVariant,nil,__TStreamReaderReadToEnd,false,0,'');
    DefineProp('BaseStream',tkClass,__GetTStreamReaderBaseStream,nil,TStream,false,0);
    DefineProp('CurrentEncoding',tkClass,__GetTStreamReaderCurrentEncoding,nil,TEncoding,false,0);
    DefineProp('EndOfStream',tkVariant,__GetTStreamReaderEndOfStream,nil,nil,false,0);
  end;
  DefineEventAdapter(TypeInfo(TNotifyEvent), TatClassesDispatcher, @TatClassesDispatcher.__TNotifyEvent);
  DefineEventAdapter(TypeInfo(TGetStrProc), TatClassesDispatcher, @TatClassesDispatcher.__TGetStrProc);
  DefineEventAdapter(TypeInfo(TGetModuleProc), TatClassesDispatcher, @TatClassesDispatcher.__TGetModuleProc);
  DefineEventAdapter(TypeInfo(TReaderProc), TatClassesDispatcher, @TatClassesDispatcher.__TReaderProc);
  DefineEventAdapter(TypeInfo(TWriterProc), TatClassesDispatcher, @TatClassesDispatcher.__TWriterProc);
  DefineEventAdapter(TypeInfo(TStreamProc), TatClassesDispatcher, @TatClassesDispatcher.__TStreamProc);
  DefineEventAdapter(TypeInfo(TSetNameEvent), TatClassesDispatcher, @TatClassesDispatcher.__TSetNameEvent);
  DefineEventAdapter(TypeInfo(TReferenceNameEvent), TatClassesDispatcher, @TatClassesDispatcher.__TReferenceNameEvent);
  DefineEventAdapter(TypeInfo(TReadComponentsProc), TatClassesDispatcher, @TatClassesDispatcher.__TReadComponentsProc);
  DefineEventAdapter(TypeInfo(TReaderError), TatClassesDispatcher, @TatClassesDispatcher.__TReaderError);
  DefineEventAdapter(TypeInfo(TFindAncestorEvent), TatClassesDispatcher, @TatClassesDispatcher.__TFindAncestorEvent);
  DefineEventAdapter(TypeInfo(TGetLookupInfoEvent), TatClassesDispatcher, @TatClassesDispatcher.__TGetLookupInfoEvent);
  DefineEventAdapter(TypeInfo(TParserErrorEvent), TatClassesDispatcher, @TatClassesDispatcher.__TParserErrorEvent);
  DefineEventAdapter(TypeInfo(TThreadMethod), TatClassesDispatcher, @TatClassesDispatcher.__TThreadMethod);
  DefineEventAdapter(TypeInfo(TGetChildProc), TatClassesDispatcher, @TatClassesDispatcher.__TGetChildProc);
  With Scripter.DefineClass(ClassType) do
  begin
    DefineMethod('Point',2,tkVariant,nil,__Point,false,0,'AX: Integer; AY: Integer');
    DefineMethod('SmallPoint',2,tkVariant,nil,__SmallPoint,false,0,'AX: SmallInt; AY: SmallInt');
    DefineMethod('PointsEqual',2,tkVariant,nil,__PointsEqual,false,0,'P1: TPoint; P2: TPoint');
    DefineMethod('InvalidPoint',2,tkVariant,nil,__InvalidPoint,false,0,'X: Integer; Y: Integer');
    DefineMethod('Rect',4,tkVariant,nil,__Rect,false,0,'ALeft: Integer; ATop: Integer; ARight: Integer; ABottom: Integer');
    DefineMethod('Bounds',4,tkVariant,nil,__Bounds,false,0,'ALeft: Integer; ATop: Integer; AWidth: Integer; AHeight: Integer');
    DefineMethod('UnRegisterModuleClasses',1,tkNone,nil,__UnRegisterModuleClasses,false,0,'Module: HMODULE');
    DefineMethod('FindGlobalComponent',1,tkClass,TComponent,__FindGlobalComponent,false,0,'Name: string');
    DefineMethod('IsUniqueGlobalComponentName',1,tkVariant,nil,__IsUniqueGlobalComponentName,false,0,'Name: string');
    DefineMethod('InitComponentRes',2,tkVariant,nil,__InitComponentRes,false,0,'ResName: string; Instance: TComponent');
    DefineMethod('ReadComponentRes',2,tkClass,TComponent,__ReadComponentRes,false,0,'ResName: string; Instance: TComponent');
    DefineMethod('ReadComponentResEx',2,tkClass,TComponent,__ReadComponentResEx,false,0,'HInstance: THandle; ResName: string');
    DefineMethod('ReadComponentResFile',2,tkClass,TComponent,__ReadComponentResFile,false,0,'FileName: string; Instance: TComponent');
    DefineMethod('WriteComponentResFile',2,tkNone,nil,__WriteComponentResFile,false,0,'FileName: string; Instance: TComponent');
    DefineMethod('GlobalFixupReferences',0,tkNone,nil,__GlobalFixupReferences,false,0,'');
    DefineMethod('GetFixupReferenceNames',2,tkNone,nil,__GetFixupReferenceNames,false,0,'Root: TComponent; Names: TStrings');
    DefineMethod('GetFixupInstanceNames',3,tkNone,nil,__GetFixupInstanceNames,false,0,'Root: TComponent; ReferenceRootName: string; Names: TStrings');
    DefineMethod('RedirectFixupReferences',3,tkNone,nil,__RedirectFixupReferences,false,0,'Root: TComponent; OldRootName: string; NewRootName: string');
    DefineMethod('RemoveFixupReferences',2,tkNone,nil,__RemoveFixupReferences,false,0,'Root: TComponent; RootName: string');
    DefineMethod('RemoveFixups',1,tkNone,nil,__RemoveFixups,false,0,'Instance: TPersistent');
    DefineMethod('FindNestedComponent',2,tkClass,TComponent,__FindNestedComponent,false,0,'Root: TComponent; NamePath: string');
    DefineMethod('BeginGlobalLoading',0,tkNone,nil,__BeginGlobalLoading,false,0,'');
    DefineMethod('NotifyGlobalLoading',0,tkNone,nil,__NotifyGlobalLoading,false,0,'');
    DefineMethod('EndGlobalLoading',0,tkNone,nil,__EndGlobalLoading,false,0,'');
    DefineMethod('CollectionsEqual',4,tkVariant,nil,__CollectionsEqual,false,0,'C1: TCollection; C2: TCollection; Owner1: TComponent; Owner2: TComponent');
    DefineMethod('GetUltimateOwner',1,tkClass,TPersistent,__GetUltimateOwner,false,0,'ACollectionItem: TCollectionItem');
    DefineMethod('ObjectBinaryToText',2,tkNone,nil,__ObjectBinaryToText,false,0,'Input: TStream; Output: TStream');
    DefineMethod('ObjectTextToBinary',2,tkNone,nil,__ObjectTextToBinary,false,0,'Input: TStream; Output: TStream');
    DefineMethod('ObjectResourceToText',2,tkNone,nil,__ObjectResourceToText,false,0,'Input: TStream; Output: TStream');
    DefineMethod('ObjectTextToResource',2,tkNone,nil,__ObjectTextToResource,false,0,'Input: TStream; Output: TStream');
    DefineMethod('TestStreamFormat',1,tkEnumeration,nil,__TestStreamFormat,false,0,'Stream: TStream');
    DefineMethod('GetResourceName',2,tkVariant,nil,__GetResourceName,false,0,'ObjStream: TStream; AName: string').SetVarArgs([1]);
    DefineMethod('WriteObjectResourceHeader',2,tkNone,nil,__WriteObjectResourceHeader,false,0,'ObjStream: TStream; Output: TStream');
    DefineMethod('LineStart',2,tkVariant,nil,__LineStart,false,0,'Buffer: PAnsiChar; BufPos: PAnsiChar');
    DefineMethod('ExtractStrings',4,tkInteger,nil,__ExtractStrings,false,0,'Separators: TSysCharSet; WhiteSpace: TSysCharSet; Content: PChar; Strings: TStrings');
    DefineMethod('BinToHex',3,tkNone,nil,__BinToHex,false,0,'Buffer: PAnsiChar; Text: PWideChar; BufSize: Integer');
    DefineMethod('HexToBin',3,tkInteger,nil,__HexToBin,false,0,'Text: PWideChar; Buffer: PAnsiChar; BufSize: Integer');
    DefineMethod('CheckSynchronize',1,tkVariant,nil,__CheckSynchronize,false,1,'Timeout: Integer = 0');
    DefineMethod('DeallocateHWnd',1,tkNone,nil,__DeallocateHWnd,false,0,'Wnd: HWND');
    DefineMethod('AncestorIsValid',3,tkVariant,nil,__AncestorIsValid,false,0,'Ancestor: TPersistent; Root: TComponent; RootAncestor: TComponent');
    DefineProp('CurrentGroup',tkInteger,__GetCurrentGroup,__SetCurrentGroup,nil,false,0);
    AddConstant('soBeginning',soBeginning);
    AddConstant('soCurrent',soCurrent);
    AddConstant('soEnd',soEnd);
    AddConstant('taLeftJustify',taLeftJustify);
    AddConstant('taRightJustify',taRightJustify);
    AddConstant('taCenter',taCenter);
    AddConstant('bdLeftToRight',bdLeftToRight);
    AddConstant('bdRightToLeft',bdRightToLeft);
    AddConstant('bdRightToLeftNoAlign',bdRightToLeftNoAlign);
    AddConstant('bdRightToLeftReadingOnly',bdRightToLeftReadingOnly);
    AddConstant('taAlignTop',taAlignTop);
    AddConstant('taAlignBottom',taAlignBottom);
    AddConstant('taVerticalCenter',taVerticalCenter);
    AddConstant('htKeyword',htKeyword);
    AddConstant('htContext',htContext);
    AddConstant('dupIgnore',dupIgnore);
    AddConstant('dupAccept',dupAccept);
    AddConstant('dupError',dupError);
    AddConstant('lnAdded',lnAdded);
    AddConstant('lnExtracted',lnExtracted);
    AddConstant('lnDeleted',lnDeleted);
    AddConstant('laCopy',laCopy);
    AddConstant('laAnd',laAnd);
    AddConstant('laOr',laOr);
    AddConstant('laXor',laXor);
    AddConstant('laSrcUnique',laSrcUnique);
    AddConstant('laDestUnique',laDestUnique);
    AddConstant('cnAdded',cnAdded);
    AddConstant('cnExtracting',cnExtracting);
    AddConstant('cnDeleting',cnDeleting);
    AddConstant('soReference',soReference);
    AddConstant('soOwned',soOwned);
    AddConstant('vaNull',vaNull);
    AddConstant('vaList',vaList);
    AddConstant('vaInt8',vaInt8);
    AddConstant('vaInt16',vaInt16);
    AddConstant('vaInt32',vaInt32);
    AddConstant('vaExtended',vaExtended);
    AddConstant('vaString',vaString);
    AddConstant('vaIdent',vaIdent);
    AddConstant('vaFalse',vaFalse);
    AddConstant('vaTrue',vaTrue);
    AddConstant('vaBinary',vaBinary);
    AddConstant('vaSet',vaSet);
    AddConstant('vaLString',vaLString);
    AddConstant('vaNil',vaNil);
    AddConstant('vaCollection',vaCollection);
    AddConstant('vaSingle',vaSingle);
    AddConstant('vaCurrency',vaCurrency);
    AddConstant('vaDate',vaDate);
    AddConstant('vaWString',vaWString);
    AddConstant('vaInt64',vaInt64);
    AddConstant('vaUTF8String',vaUTF8String);
    AddConstant('vaDouble',vaDouble);
    AddConstant('ffInherited',ffInherited);
    AddConstant('ffChildPos',ffChildPos);
    AddConstant('ffInline',ffInline);
    AddConstant('ctOther',ctOther);
    AddConstant('ctLetterStart',ctLetterStart);
    AddConstant('ctLetterNumber',ctLetterNumber);
    AddConstant('ctNumber',ctNumber);
    AddConstant('ctHash',ctHash);
    AddConstant('ctQuote',ctQuote);
    AddConstant('ctDollar',ctDollar);
    AddConstant('ctDash',ctDash);
    AddConstant('tpIdle',tpIdle);
    AddConstant('tpLowest',tpLowest);
    AddConstant('tpLower',tpLower);
    AddConstant('tpNormal',tpNormal);
    AddConstant('tpHigher',tpHigher);
    AddConstant('tpHighest',tpHighest);
    AddConstant('tpTimeCritical',tpTimeCritical);
    AddConstant('opInsert',opInsert);
    AddConstant('opRemove',opRemove);
    AddConstant('axrComponentOnly',axrComponentOnly);
    AddConstant('axrIncludeDescendants',axrIncludeDescendants);
    AddConstant('sofUnknown',sofUnknown);
    AddConstant('sofBinary',sofBinary);
    AddConstant('sofText',sofText);
    AddConstant('sofUTF8Text',sofUTF8Text);
    AddConstant('MaxListSize',MaxListSize);
    AddConstant('soFromBeginning',soFromBeginning);
    AddConstant('soFromCurrent',soFromCurrent);
    AddConstant('soFromEnd',soFromEnd);
    AddConstant('fmCreate',fmCreate);
    AddConstant('toEOF',toEOF);
    AddConstant('toSymbol',toSymbol);
    AddConstant('toString',toString);
    AddConstant('toInteger',toInteger);
    AddConstant('toFloat',toFloat);
    AddConstant('toWString',toWString);
    AddConstant('scShift',scShift);
    AddConstant('scCtrl',scCtrl);
    AddConstant('scAlt',scAlt);
    AddConstant('scNone',scNone);
  end;
end;

class function TatClassesLibrary.LibraryName: string;
begin
  result := 'Classes';
end;

initialization
  RegisterScripterLibrary(TatClassesLibrary, True);

{$WARNINGS ON}

end.

