.class public abstract Lorg/kxml2/wap/wv/WV;
.super Ljava/lang/Object;


# static fields
.field public static final attrStartTable:[Ljava/lang/String;

.field public static final attrValueTable:[Ljava/lang/String;

.field public static final tagTablePage0:[Ljava/lang/String;

.field public static final tagTablePage1:[Ljava/lang/String;

.field public static final tagTablePage2:[Ljava/lang/String;

.field public static final tagTablePage3:[Ljava/lang/String;

.field public static final tagTablePage4:[Ljava/lang/String;

.field public static final tagTablePage5:[Ljava/lang/String;

.field public static final tagTablePage6:[Ljava/lang/String;

.field public static final tagTablePage7:[Ljava/lang/String;

.field public static final tagTablePage8:[Ljava/lang/String;

.field public static final tagTablePage9:[Ljava/lang/String;

.field public static final tagTablePageA:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/16 v0, 0x39

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Acceptance"

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "AddList"

    aput-object v3, v0, v2

    const/4 v3, 0x2

    const-string v4, "AddNickList"

    aput-object v4, v0, v3

    const/4 v4, 0x3

    const-string v5, "SName"

    aput-object v5, v0, v4

    const/4 v5, 0x4

    const-string v6, "WV-CSP-Message"

    aput-object v6, v0, v5

    const/4 v6, 0x5

    const-string v7, "ClientID"

    aput-object v7, v0, v6

    const/4 v7, 0x6

    const-string v8, "Code"

    aput-object v8, v0, v7

    const/4 v8, 0x7

    const-string v9, "ContactList"

    aput-object v9, v0, v8

    const/16 v9, 0x8

    const-string v10, "ContentData"

    aput-object v10, v0, v9

    const/16 v10, 0x9

    const-string v11, "ContentEncoding"

    aput-object v11, v0, v10

    const/16 v11, 0xa

    const-string v12, "ContentSize"

    aput-object v12, v0, v11

    const/16 v12, 0xb

    const-string v13, "ContentType"

    aput-object v13, v0, v12

    const/16 v13, 0xc

    const-string v14, "DateTime"

    aput-object v14, v0, v13

    const/16 v14, 0xd

    const-string v15, "Description"

    aput-object v15, v0, v14

    const/16 v15, 0xe

    const-string v16, "DetailedResult"

    aput-object v16, v0, v15

    const/16 v15, 0xf

    const-string v16, "EntityList"

    aput-object v16, v0, v15

    const/16 v15, 0x10

    const-string v16, "Group"

    aput-object v16, v0, v15

    const/16 v15, 0x11

    const-string v16, "GroupID"

    aput-object v16, v0, v15

    const/16 v15, 0x12

    const-string v16, "GroupList"

    aput-object v16, v0, v15

    const/16 v15, 0x13

    const-string v16, "InUse"

    aput-object v16, v0, v15

    const/16 v15, 0x14

    const-string v16, "Logo"

    aput-object v16, v0, v15

    const/16 v15, 0x15

    const-string v16, "MessageCount"

    aput-object v16, v0, v15

    const/16 v15, 0x16

    const-string v16, "MessageID"

    aput-object v16, v0, v15

    const/16 v15, 0x17

    const-string v16, "MessageURI"

    aput-object v16, v0, v15

    const/16 v15, 0x18

    const-string v16, "MSISDN"

    aput-object v16, v0, v15

    const/16 v15, 0x19

    const-string v16, "Name"

    aput-object v16, v0, v15

    const/16 v15, 0x1a

    const-string v16, "NickList"

    aput-object v16, v0, v15

    const/16 v15, 0x1b

    const-string v16, "NickName"

    aput-object v16, v0, v15

    const/16 v15, 0x1c

    const-string v16, "Poll"

    aput-object v16, v0, v15

    const/16 v15, 0x1d

    const-string v16, "Presence"

    aput-object v16, v0, v15

    const/16 v15, 0x1e

    const-string v16, "PresenceSubList"

    aput-object v16, v0, v15

    const/16 v15, 0x1f

    const-string v16, "PresenceValue"

    aput-object v16, v0, v15

    const/16 v15, 0x20

    const-string v16, "Property"

    aput-object v16, v0, v15

    const/16 v15, 0x21

    const-string v16, "Qualifier"

    aput-object v16, v0, v15

    const/16 v15, 0x22

    const-string v16, "Recipient"

    aput-object v16, v0, v15

    const/16 v15, 0x23

    const-string v16, "RemoveList"

    aput-object v16, v0, v15

    const/16 v15, 0x24

    const-string v16, "RemoveNickList"

    aput-object v16, v0, v15

    const/16 v15, 0x25

    const-string v16, "Result"

    aput-object v16, v0, v15

    const/16 v15, 0x26

    const-string v16, "ScreenName"

    aput-object v16, v0, v15

    const/16 v15, 0x27

    const-string v16, "Sender"

    aput-object v16, v0, v15

    const/16 v15, 0x28

    const-string v16, "Session"

    aput-object v16, v0, v15

    const/16 v15, 0x29

    const-string v16, "SessionDescriptor"

    aput-object v16, v0, v15

    const/16 v15, 0x2a

    const-string v16, "SessionID"

    aput-object v16, v0, v15

    const/16 v15, 0x2b

    const-string v16, "SessionType"

    aput-object v16, v0, v15

    const/16 v15, 0x2c

    const-string v16, "Status"

    aput-object v16, v0, v15

    const/16 v15, 0x2d

    const-string v16, "Transaction"

    aput-object v16, v0, v15

    const/16 v15, 0x2e

    const-string v16, "TransactionContent"

    aput-object v16, v0, v15

    const/16 v15, 0x2f

    const-string v16, "TransactionDescriptor"

    aput-object v16, v0, v15

    const/16 v15, 0x30

    const-string v16, "TransactionID"

    aput-object v16, v0, v15

    const/16 v15, 0x31

    const-string v16, "TransactionMode"

    aput-object v16, v0, v15

    const/16 v15, 0x32

    const-string v16, "URL"

    aput-object v16, v0, v15

    const/16 v15, 0x33

    const-string v16, "URLList"

    aput-object v16, v0, v15

    const/16 v15, 0x34

    const-string v16, "User"

    aput-object v16, v0, v15

    const/16 v15, 0x35

    const-string v16, "UserID"

    aput-object v16, v0, v15

    const/16 v15, 0x36

    const-string v16, "UserList"

    aput-object v16, v0, v15

    const/16 v15, 0x37

    const-string v16, "Validity"

    aput-object v16, v0, v15

    const/16 v15, 0x38

    const-string v16, "Value"

    aput-object v16, v0, v15

    sput-object v0, Lorg/kxml2/wap/wv/WV;->tagTablePage0:[Ljava/lang/String;

    const/16 v0, 0x3b

    new-array v0, v0, [Ljava/lang/String;

    const-string v15, "AllFunctions"

    aput-object v15, v0, v1

    const-string v15, "AllFunctionsRequest"

    aput-object v15, v0, v2

    const-string v15, "CancelInvite-Request"

    aput-object v15, v0, v3

    const-string v15, "CancelInviteUser-Request"

    aput-object v15, v0, v4

    const-string v15, "Capability"

    aput-object v15, v0, v5

    const-string v15, "CapabilityList"

    aput-object v15, v0, v6

    const-string v15, "CapabilityRequest"

    aput-object v15, v0, v7

    const-string v15, "ClientCapability-Request"

    aput-object v15, v0, v8

    const-string v15, "ClientCapability-Response"

    aput-object v15, v0, v9

    const-string v15, "DigestBytes"

    aput-object v15, v0, v10

    const-string v15, "DigestSchema"

    aput-object v15, v0, v11

    const-string v15, "Disconnect"

    aput-object v15, v0, v12

    const-string v15, "Functions"

    aput-object v15, v0, v13

    const-string v15, "GetSPInfo-Request"

    aput-object v15, v0, v14

    const/16 v15, 0xe

    const-string v16, "GetSPInfo-Response"

    aput-object v16, v0, v15

    const/16 v15, 0xf

    const-string v16, "InviteID"

    aput-object v16, v0, v15

    const/16 v15, 0x10

    const-string v16, "InviteNote"

    aput-object v16, v0, v15

    const/16 v15, 0x11

    const-string v16, "Invite-Request"

    aput-object v16, v0, v15

    const/16 v15, 0x12

    const-string v16, "Invite-Response"

    aput-object v16, v0, v15

    const/16 v15, 0x13

    const-string v16, "InviteType"

    aput-object v16, v0, v15

    const/16 v15, 0x14

    const-string v16, "InviteUser-Request"

    aput-object v16, v0, v15

    const/16 v15, 0x15

    const-string v16, "InviteUser-Response"

    aput-object v16, v0, v15

    const/16 v15, 0x16

    const-string v16, "KeepAlive-Request"

    aput-object v16, v0, v15

    const/16 v15, 0x17

    const-string v16, "KeepAliveTime"

    aput-object v16, v0, v15

    const/16 v15, 0x18

    const-string v16, "Login-Request"

    aput-object v16, v0, v15

    const/16 v15, 0x19

    const-string v16, "Login-Response"

    aput-object v16, v0, v15

    const/16 v15, 0x1a

    const-string v16, "Logout-Request"

    aput-object v16, v0, v15

    const/16 v15, 0x1b

    const-string v16, "Nonce"

    aput-object v16, v0, v15

    const/16 v15, 0x1c

    const-string v16, "Password"

    aput-object v16, v0, v15

    const/16 v15, 0x1d

    const-string v16, "Polling-Request"

    aput-object v16, v0, v15

    const/16 v15, 0x1e

    const-string v16, "ResponseNote"

    aput-object v16, v0, v15

    const/16 v15, 0x1f

    const-string v16, "SearchElement"

    aput-object v16, v0, v15

    const/16 v15, 0x20

    const-string v16, "SearchFindings"

    aput-object v16, v0, v15

    const/16 v15, 0x21

    const-string v16, "SearchID"

    aput-object v16, v0, v15

    const/16 v15, 0x22

    const-string v16, "SearchIndex"

    aput-object v16, v0, v15

    const/16 v15, 0x23

    const-string v16, "SearchLimit"

    aput-object v16, v0, v15

    const/16 v15, 0x24

    const-string v16, "KeepAlive-Response"

    aput-object v16, v0, v15

    const/16 v15, 0x25

    const-string v16, "SearchPairList"

    aput-object v16, v0, v15

    const/16 v15, 0x26

    const-string v16, "Search-Request"

    aput-object v16, v0, v15

    const/16 v15, 0x27

    const-string v16, "Search-Response"

    aput-object v16, v0, v15

    const/16 v15, 0x28

    const-string v16, "SearchResult"

    aput-object v16, v0, v15

    const/16 v15, 0x29

    const-string v16, "Service-Request"

    aput-object v16, v0, v15

    const/16 v15, 0x2a

    const-string v16, "Service-Response"

    aput-object v16, v0, v15

    const/16 v15, 0x2b

    const-string v16, "SessionCookie"

    aput-object v16, v0, v15

    const/16 v15, 0x2c

    const-string v16, "StopSearch-Request"

    aput-object v16, v0, v15

    const/16 v15, 0x2d

    const-string v16, "TimeToLive"

    aput-object v16, v0, v15

    const/16 v15, 0x2e

    const-string v16, "SearchString"

    aput-object v16, v0, v15

    const/16 v15, 0x2f

    const-string v16, "CompletionFlag"

    aput-object v16, v0, v15

    const/4 v15, 0x0

    const/16 v16, 0x30

    aput-object v15, v0, v16

    const/16 v16, 0x31

    const-string v17, "ReceiveList"

    aput-object v17, v0, v16

    const/16 v16, 0x32

    const-string v17, "VerifyID-Request"

    aput-object v17, v0, v16

    const/16 v16, 0x33

    const-string v17, "Extended-Request"

    aput-object v17, v0, v16

    const/16 v16, 0x34

    const-string v17, "Extended-Response"

    aput-object v17, v0, v16

    const/16 v16, 0x35

    const-string v17, "AgreedCapabilityList"

    aput-object v17, v0, v16

    const/16 v16, 0x36

    const-string v17, "Extended-Data"

    aput-object v17, v0, v16

    const/16 v16, 0x37

    const-string v17, "OtherServer"

    aput-object v17, v0, v16

    const/16 v16, 0x38

    const-string v17, "PresenceAttributeNSName"

    aput-object v17, v0, v16

    const/16 v16, 0x39

    const-string v17, "SessionNSName"

    aput-object v17, v0, v16

    const/16 v16, 0x3a

    const-string v17, "TransactionNSName"

    aput-object v17, v0, v16

    sput-object v0, Lorg/kxml2/wap/wv/WV;->tagTablePage1:[Ljava/lang/String;

    const/16 v0, 0x3b

    new-array v0, v0, [Ljava/lang/String;

    const-string v16, "ADDGM"

    aput-object v16, v0, v1

    const-string v16, "AttListFunc"

    aput-object v16, v0, v2

    const-string v16, "BLENT"

    aput-object v16, v0, v3

    const-string v16, "CAAUT"

    aput-object v16, v0, v4

    const-string v16, "CAINV"

    aput-object v16, v0, v5

    const-string v16, "CALI"

    aput-object v16, v0, v6

    const-string v16, "CCLI"

    aput-object v16, v0, v7

    const-string v16, "ContListFunc"

    aput-object v16, v0, v8

    const-string v16, "CREAG"

    aput-object v16, v0, v9

    const-string v16, "DALI"

    aput-object v16, v0, v10

    const-string v16, "DCLI"

    aput-object v16, v0, v11

    const-string v16, "DELGR"

    aput-object v16, v0, v12

    const-string v16, "FundamentalFeat"

    aput-object v16, v0, v13

    const-string v16, "FWMSG"

    aput-object v16, v0, v14

    const/16 v16, 0xe

    const-string v17, "GALS"

    aput-object v17, v0, v16

    const/16 v16, 0xf

    const-string v17, "GCLI"

    aput-object v17, v0, v16

    const/16 v16, 0x10

    const-string v17, "GETGM"

    aput-object v17, v0, v16

    const/16 v16, 0x11

    const-string v17, "GETGP"

    aput-object v17, v0, v16

    const/16 v16, 0x12

    const-string v17, "GETLM"

    aput-object v17, v0, v16

    const/16 v16, 0x13

    const-string v17, "GETM"

    aput-object v17, v0, v16

    const/16 v16, 0x14

    const-string v17, "GETPR"

    aput-object v17, v0, v16

    const/16 v16, 0x15

    const-string v17, "GETSPI"

    aput-object v17, v0, v16

    const/16 v16, 0x16

    const-string v17, "GETWL"

    aput-object v17, v0, v16

    const/16 v16, 0x17

    const-string v17, "GLBLU"

    aput-object v17, v0, v16

    const/16 v16, 0x18

    const-string v17, "GRCHN"

    aput-object v17, v0, v16

    const/16 v16, 0x19

    const-string v17, "GroupAuthFunc"

    aput-object v17, v0, v16

    const/16 v16, 0x1a

    const-string v17, "GroupFeat"

    aput-object v17, v0, v16

    const/16 v16, 0x1b

    const-string v17, "GroupMgmtFunc"

    aput-object v17, v0, v16

    const/16 v16, 0x1c

    const-string v17, "GroupUseFunc"

    aput-object v17, v0, v16

    const/16 v16, 0x1d

    const-string v17, "IMAuthFunc"

    aput-object v17, v0, v16

    const/16 v16, 0x1e

    const-string v17, "IMFeat"

    aput-object v17, v0, v16

    const/16 v16, 0x1f

    const-string v17, "IMReceiveFunc"

    aput-object v17, v0, v16

    const/16 v16, 0x20

    const-string v17, "IMSendFunc"

    aput-object v17, v0, v16

    const/16 v16, 0x21

    const-string v17, "INVIT"

    aput-object v17, v0, v16

    const/16 v16, 0x22

    const-string v17, "InviteFunc"

    aput-object v17, v0, v16

    const/16 v16, 0x23

    const-string v17, "MBRAC"

    aput-object v17, v0, v16

    const/16 v16, 0x24

    const-string v17, "MCLS"

    aput-object v17, v0, v16

    const/16 v16, 0x25

    const-string v17, "MDELIV"

    aput-object v17, v0, v16

    const/16 v16, 0x26

    const-string v17, "NEWM"

    aput-object v17, v0, v16

    const/16 v16, 0x27

    const-string v17, "NOTIF"

    aput-object v17, v0, v16

    const/16 v16, 0x28

    const-string v17, "PresenceAuthFunc"

    aput-object v17, v0, v16

    const/16 v16, 0x29

    const-string v17, "PresenceDeliverFunc"

    aput-object v17, v0, v16

    const/16 v16, 0x2a

    const-string v17, "PresenceFeat"

    aput-object v17, v0, v16

    const/16 v16, 0x2b

    const-string v17, "REACT"

    aput-object v17, v0, v16

    const/16 v16, 0x2c

    const-string v17, "REJCM"

    aput-object v17, v0, v16

    const/16 v16, 0x2d

    const-string v17, "REJEC"

    aput-object v17, v0, v16

    const/16 v16, 0x2e

    const-string v17, "RMVGM"

    aput-object v17, v0, v16

    const/16 v16, 0x2f

    const-string v17, "SearchFunc"

    aput-object v17, v0, v16

    const/16 v16, 0x30

    const-string v17, "ServiceFunc"

    aput-object v17, v0, v16

    const/16 v16, 0x31

    const-string v17, "SETD"

    aput-object v17, v0, v16

    const/16 v16, 0x32

    const-string v17, "SETGP"

    aput-object v17, v0, v16

    const/16 v16, 0x33

    const-string v17, "SRCH"

    aput-object v17, v0, v16

    const/16 v16, 0x34

    const-string v17, "STSRC"

    aput-object v17, v0, v16

    const/16 v16, 0x35

    const-string v17, "SUBGCN"

    aput-object v17, v0, v16

    const/16 v16, 0x36

    const-string v17, "UPDPR"

    aput-object v17, v0, v16

    const/16 v16, 0x37

    const-string v17, "WVCSPFeat"

    aput-object v17, v0, v16

    const/16 v16, 0x38

    const-string v17, "MF"

    aput-object v17, v0, v16

    const/16 v16, 0x39

    const-string v17, "MG"

    aput-object v17, v0, v16

    const/16 v16, 0x3a

    const-string v17, "MM"

    aput-object v17, v0, v16

    sput-object v0, Lorg/kxml2/wap/wv/WV;->tagTablePage2:[Ljava/lang/String;

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v16, "AcceptedCharset"

    aput-object v16, v0, v1

    const-string v16, "AcceptedContentLength"

    aput-object v16, v0, v2

    const-string v16, "AcceptedContentType"

    aput-object v16, v0, v3

    const-string v16, "AcceptedTransferEncoding"

    aput-object v16, v0, v4

    const-string v16, "AnyContent"

    aput-object v16, v0, v5

    const-string v16, "DefaultLanguage"

    aput-object v16, v0, v6

    const-string v16, "InitialDeliveryMethod"

    aput-object v16, v0, v7

    const-string v16, "MultiTrans"

    aput-object v16, v0, v8

    const-string v16, "ParserSize"

    aput-object v16, v0, v9

    const-string v16, "ServerPollMin"

    aput-object v16, v0, v10

    const-string v16, "SupportedBearer"

    aput-object v16, v0, v11

    const-string v16, "SupportedCIRMethod"

    aput-object v16, v0, v12

    const-string v16, "TCPAddress"

    aput-object v16, v0, v13

    const-string v16, "TCPPort"

    aput-object v16, v0, v14

    const/16 v16, 0xe

    const-string v17, "UDPPort"

    aput-object v17, v0, v16

    sput-object v0, Lorg/kxml2/wap/wv/WV;->tagTablePage3:[Ljava/lang/String;

    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const-string v16, "CancelAuth-Request"

    aput-object v16, v0, v1

    const-string v16, "ContactListProperties"

    aput-object v16, v0, v2

    const-string v16, "CreateAttributeList-Request"

    aput-object v16, v0, v3

    const-string v16, "CreateList-Request"

    aput-object v16, v0, v4

    const-string v16, "DefaultAttributeList"

    aput-object v16, v0, v5

    const-string v16, "DefaultContactList"

    aput-object v16, v0, v6

    const-string v16, "DefaultList"

    aput-object v16, v0, v7

    const-string v16, "DeleteAttributeList-Request"

    aput-object v16, v0, v8

    const-string v16, "DeleteList-Request"

    aput-object v16, v0, v9

    const-string v16, "GetAttributeList-Request"

    aput-object v16, v0, v10

    const-string v16, "GetAttributeList-Response"

    aput-object v16, v0, v11

    const-string v16, "GetList-Request"

    aput-object v16, v0, v12

    const-string v16, "GetList-Response"

    aput-object v16, v0, v13

    const-string v16, "GetPresence-Request"

    aput-object v16, v0, v14

    const/16 v16, 0xe

    const-string v17, "GetPresence-Response"

    aput-object v17, v0, v16

    const/16 v16, 0xf

    const-string v17, "GetWatcherList-Request"

    aput-object v17, v0, v16

    const/16 v16, 0x10

    const-string v17, "GetWatcherList-Response"

    aput-object v17, v0, v16

    const/16 v16, 0x11

    const-string v17, "ListManage-Request"

    aput-object v17, v0, v16

    const/16 v16, 0x12

    const-string v17, "ListManage-Response"

    aput-object v17, v0, v16

    const/16 v16, 0x13

    const-string v17, "UnsubscribePresence-Request"

    aput-object v17, v0, v16

    const/16 v16, 0x14

    const-string v17, "PresenceAuth-Request"

    aput-object v17, v0, v16

    const/16 v16, 0x15

    const-string v17, "PresenceAuth-User"

    aput-object v17, v0, v16

    const/16 v16, 0x16

    const-string v17, "PresenceNotification-Request"

    aput-object v17, v0, v16

    const/16 v16, 0x17

    const-string v17, "UpdatePresence-Request"

    aput-object v17, v0, v16

    const/16 v16, 0x18

    const-string v17, "SubscribePresence-Request"

    aput-object v17, v0, v16

    const/16 v16, 0x19

    const-string v17, "Auto-Subscribe"

    aput-object v17, v0, v16

    const/16 v16, 0x1a

    const-string v17, "GetReactiveAuthStatus-Request"

    aput-object v17, v0, v16

    const/16 v16, 0x1b

    const-string v17, "GetReactiveAuthStatus-Response"

    aput-object v17, v0, v16

    sput-object v0, Lorg/kxml2/wap/wv/WV;->tagTablePage4:[Ljava/lang/String;

    const/16 v0, 0x36

    new-array v0, v0, [Ljava/lang/String;

    const-string v16, "Accuracy"

    aput-object v16, v0, v1

    const-string v16, "Address"

    aput-object v16, v0, v2

    const-string v16, "AddrPref"

    aput-object v16, v0, v3

    const-string v16, "Alias"

    aput-object v16, v0, v4

    const-string v16, "Altitude"

    aput-object v16, v0, v5

    const-string v16, "Building"

    aput-object v16, v0, v6

    const-string v16, "Caddr"

    aput-object v16, v0, v7

    const-string v16, "City"

    aput-object v16, v0, v8

    const-string v16, "ClientInfo"

    aput-object v16, v0, v9

    const-string v16, "ClientProducer"

    aput-object v16, v0, v10

    const-string v16, "ClientType"

    aput-object v16, v0, v11

    const-string v16, "ClientVersion"

    aput-object v16, v0, v12

    const-string v16, "CommC"

    aput-object v16, v0, v13

    const-string v16, "CommCap"

    aput-object v16, v0, v14

    const/16 v16, 0xe

    const-string v17, "ContactInfo"

    aput-object v17, v0, v16

    const/16 v16, 0xf

    const-string v17, "ContainedvCard"

    aput-object v17, v0, v16

    const/16 v16, 0x10

    const-string v17, "Country"

    aput-object v17, v0, v16

    const/16 v16, 0x11

    const-string v17, "Crossing1"

    aput-object v17, v0, v16

    const/16 v16, 0x12

    const-string v17, "Crossing2"

    aput-object v17, v0, v16

    const/16 v16, 0x13

    const-string v17, "DevManufacturer"

    aput-object v17, v0, v16

    const/16 v16, 0x14

    const-string v17, "DirectContent"

    aput-object v17, v0, v16

    const/16 v16, 0x15

    const-string v17, "FreeTextLocation"

    aput-object v17, v0, v16

    const/16 v16, 0x16

    const-string v17, "GeoLocation"

    aput-object v17, v0, v16

    const/16 v16, 0x17

    const-string v17, "Language"

    aput-object v17, v0, v16

    const/16 v16, 0x18

    const-string v17, "Latitude"

    aput-object v17, v0, v16

    const/16 v16, 0x19

    const-string v17, "Longitude"

    aput-object v17, v0, v16

    const/16 v16, 0x1a

    const-string v17, "Model"

    aput-object v17, v0, v16

    const/16 v16, 0x1b

    const-string v17, "NamedArea"

    aput-object v17, v0, v16

    const/16 v16, 0x1c

    const-string v17, "OnlineStatus"

    aput-object v17, v0, v16

    const/16 v16, 0x1d

    const-string v17, "PLMN"

    aput-object v17, v0, v16

    const/16 v16, 0x1e

    const-string v17, "PrefC"

    aput-object v17, v0, v16

    const/16 v16, 0x1f

    const-string v17, "PreferredContacts"

    aput-object v17, v0, v16

    const/16 v16, 0x20

    const-string v17, "PreferredLanguage"

    aput-object v17, v0, v16

    const/16 v16, 0x21

    const-string v17, "PreferredContent"

    aput-object v17, v0, v16

    const/16 v16, 0x22

    const-string v17, "PreferredvCard"

    aput-object v17, v0, v16

    const/16 v16, 0x23

    const-string v17, "Registration"

    aput-object v17, v0, v16

    const/16 v16, 0x24

    const-string v17, "StatusContent"

    aput-object v17, v0, v16

    const/16 v16, 0x25

    const-string v17, "StatusMood"

    aput-object v17, v0, v16

    const/16 v16, 0x26

    const-string v17, "StatusText"

    aput-object v17, v0, v16

    const/16 v16, 0x27

    const-string v17, "Street"

    aput-object v17, v0, v16

    const/16 v16, 0x28

    const-string v17, "TimeZone"

    aput-object v17, v0, v16

    const/16 v16, 0x29

    const-string v17, "UserAvailability"

    aput-object v17, v0, v16

    const/16 v16, 0x2a

    const-string v17, "Cap"

    aput-object v17, v0, v16

    const/16 v16, 0x2b

    const-string v17, "Cname"

    aput-object v17, v0, v16

    const/16 v16, 0x2c

    const-string v17, "Contact"

    aput-object v17, v0, v16

    const/16 v16, 0x2d

    const-string v17, "Cpriority"

    aput-object v17, v0, v16

    const/16 v16, 0x2e

    const-string v17, "Cstatus"

    aput-object v17, v0, v16

    const/16 v16, 0x2f

    const-string v17, "Note"

    aput-object v17, v0, v16

    const/16 v16, 0x30

    const-string v17, "Zone"

    aput-object v17, v0, v16

    const/16 v16, 0x31

    aput-object v15, v0, v16

    const/16 v16, 0x32

    const-string v17, "Inf_link"

    aput-object v17, v0, v16

    const/16 v16, 0x33

    const-string v17, "InfoLink"

    aput-object v17, v0, v16

    const/16 v16, 0x34

    const-string v17, "Link"

    aput-object v17, v0, v16

    const/16 v16, 0x35

    const-string v17, "Text"

    aput-object v17, v0, v16

    sput-object v0, Lorg/kxml2/wap/wv/WV;->tagTablePage5:[Ljava/lang/String;

    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v16, "BlockList"

    aput-object v16, v0, v1

    const-string v16, "BlockEntity-Request"

    aput-object v16, v0, v2

    const-string v16, "DeliveryMethod"

    aput-object v16, v0, v3

    const-string v16, "DeliveryReport"

    aput-object v16, v0, v4

    const-string v16, "DeliveryReport-Request"

    aput-object v16, v0, v5

    const-string v16, "ForwardMessage-Request"

    aput-object v16, v0, v6

    const-string v16, "GetBlockedList-Request"

    aput-object v16, v0, v7

    const-string v16, "GetBlockedList-Response"

    aput-object v16, v0, v8

    const-string v16, "GetMessageList-Request"

    aput-object v16, v0, v9

    const-string v16, "GetMessageList-Response"

    aput-object v16, v0, v10

    const-string v16, "GetMessage-Request"

    aput-object v16, v0, v11

    const-string v16, "GetMessage-Response"

    aput-object v16, v0, v12

    const-string v16, "GrantList"

    aput-object v16, v0, v13

    const-string v16, "MessageDelivered"

    aput-object v16, v0, v14

    const/16 v16, 0xe

    const-string v17, "MessageInfo"

    aput-object v17, v0, v16

    const/16 v16, 0xf

    const-string v17, "MessageNotification"

    aput-object v17, v0, v16

    const/16 v16, 0x10

    const-string v17, "NewMessage"

    aput-object v17, v0, v16

    const/16 v16, 0x11

    const-string v17, "RejectMessage-Request"

    aput-object v17, v0, v16

    const/16 v16, 0x12

    const-string v17, "SendMessage-Request"

    aput-object v17, v0, v16

    const/16 v16, 0x13

    const-string v17, "SendMessage-Response"

    aput-object v17, v0, v16

    const/16 v16, 0x14

    const-string v17, "SetDeliveryMethod-Request"

    aput-object v17, v0, v16

    const/16 v16, 0x15

    const-string v17, "DeliveryTime"

    aput-object v17, v0, v16

    sput-object v0, Lorg/kxml2/wap/wv/WV;->tagTablePage6:[Ljava/lang/String;

    const/16 v0, 0x27

    new-array v0, v0, [Ljava/lang/String;

    const-string v16, "AddGroupMembers-Request"

    aput-object v16, v0, v1

    const-string v16, "Admin"

    aput-object v16, v0, v2

    const-string v16, "CreateGroup-Request"

    aput-object v16, v0, v3

    const-string v16, "DeleteGroup-Request"

    aput-object v16, v0, v4

    const-string v16, "GetGroupMembers-Request"

    aput-object v16, v0, v5

    const-string v16, "GetGroupMembers-Response"

    aput-object v16, v0, v6

    const-string v16, "GetGroupProps-Request"

    aput-object v16, v0, v7

    const-string v16, "GetGroupProps-Response"

    aput-object v16, v0, v8

    const-string v16, "GroupChangeNotice"

    aput-object v16, v0, v9

    const-string v16, "GroupProperties"

    aput-object v16, v0, v10

    const-string v16, "Joined"

    aput-object v16, v0, v11

    const-string v16, "JoinedRequest"

    aput-object v16, v0, v12

    const-string v16, "JoinGroup-Request"

    aput-object v16, v0, v13

    const-string v16, "JoinGroup-Response"

    aput-object v16, v0, v14

    const/16 v16, 0xe

    const-string v17, "LeaveGroup-Request"

    aput-object v17, v0, v16

    const/16 v16, 0xf

    const-string v17, "LeaveGroup-Response"

    aput-object v17, v0, v16

    const/16 v16, 0x10

    const-string v17, "Left"

    aput-object v17, v0, v16

    const/16 v16, 0x11

    const-string v17, "MemberAccess-Request"

    aput-object v17, v0, v16

    const/16 v16, 0x12

    const-string v17, "Mod"

    aput-object v17, v0, v16

    const/16 v16, 0x13

    const-string v17, "OwnProperties"

    aput-object v17, v0, v16

    const/16 v16, 0x14

    const-string v17, "RejectList-Request"

    aput-object v17, v0, v16

    const/16 v16, 0x15

    const-string v17, "RejectList-Response"

    aput-object v17, v0, v16

    const/16 v16, 0x16

    const-string v17, "RemoveGroupMembers-Request"

    aput-object v17, v0, v16

    const/16 v16, 0x17

    const-string v17, "SetGroupProps-Request"

    aput-object v17, v0, v16

    const/16 v16, 0x18

    const-string v17, "SubscribeGroupNotice-Request"

    aput-object v17, v0, v16

    const/16 v16, 0x19

    const-string v17, "SubscribeGroupNotice-Response"

    aput-object v17, v0, v16

    const/16 v16, 0x1a

    const-string v17, "Users"

    aput-object v17, v0, v16

    const/16 v16, 0x1b

    const-string v17, "WelcomeNote"

    aput-object v17, v0, v16

    const/16 v16, 0x1c

    const-string v17, "JoinGroup"

    aput-object v17, v0, v16

    const/16 v16, 0x1d

    const-string v17, "SubscribeNotification"

    aput-object v17, v0, v16

    const/16 v16, 0x1e

    const-string v17, "SubscribeType"

    aput-object v17, v0, v16

    const/16 v16, 0x1f

    const-string v17, "GetJoinedUsers-Request"

    aput-object v17, v0, v16

    const/16 v16, 0x20

    const-string v17, "GetJoinedUsers-Response"

    aput-object v17, v0, v16

    const/16 v16, 0x21

    const-string v17, "AdminMapList"

    aput-object v17, v0, v16

    const/16 v16, 0x22

    const-string v17, "AdminMapping"

    aput-object v17, v0, v16

    const/16 v16, 0x23

    const-string v17, "Mapping"

    aput-object v17, v0, v16

    const/16 v16, 0x24

    const-string v17, "ModMapping"

    aput-object v17, v0, v16

    const/16 v16, 0x25

    const-string v17, "UserMapList"

    aput-object v17, v0, v16

    const/16 v16, 0x26

    const-string v17, "UserMapping"

    aput-object v17, v0, v16

    sput-object v0, Lorg/kxml2/wap/wv/WV;->tagTablePage7:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v16, "MP"

    aput-object v16, v0, v1

    const-string v16, "GETAUT"

    aput-object v16, v0, v2

    const-string v16, "GETJU"

    aput-object v16, v0, v3

    const-string v16, "VRID"

    aput-object v16, v0, v4

    const-string v16, "VerifyIDFunc"

    aput-object v16, v0, v5

    sput-object v0, Lorg/kxml2/wap/wv/WV;->tagTablePage8:[Ljava/lang/String;

    new-array v0, v12, [Ljava/lang/String;

    const-string v16, "CIR"

    aput-object v16, v0, v1

    const-string v16, "Domain"

    aput-object v16, v0, v2

    const-string v16, "ExtBlock"

    aput-object v16, v0, v3

    const-string v16, "HistoryPeriod"

    aput-object v16, v0, v4

    const-string v16, "IDList"

    aput-object v16, v0, v5

    const-string v16, "MaxWatcherList"

    aput-object v16, v0, v6

    const-string v16, "ReactiveAuthState"

    aput-object v16, v0, v7

    const-string v16, "ReactiveAuthStatus"

    aput-object v16, v0, v8

    const-string v16, "ReactiveAuthStatusList"

    aput-object v16, v0, v9

    const-string v16, "Watcher"

    aput-object v16, v0, v10

    const-string v16, "WatcherStatus"

    aput-object v16, v0, v11

    sput-object v0, Lorg/kxml2/wap/wv/WV;->tagTablePage9:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v16, "WV-CSP-NSDiscovery-Request"

    aput-object v16, v0, v1

    const-string v16, "WV-CSP-NSDiscovery-Response"

    aput-object v16, v0, v2

    const-string v16, "VersionList"

    aput-object v16, v0, v3

    sput-object v0, Lorg/kxml2/wap/wv/WV;->tagTablePageA:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v16, "xmlns=http://www.wireless-village.org/CSP"

    aput-object v16, v0, v1

    const-string/jumbo v16, "xmlns=http://www.wireless-village.org/PA"

    aput-object v16, v0, v2

    const-string/jumbo v16, "xmlns=http://www.wireless-village.org/TRC"

    aput-object v16, v0, v3

    const-string/jumbo v16, "xmlns=http://www.openmobilealliance.org/DTD/WV-CSP"

    aput-object v16, v0, v4

    const-string/jumbo v16, "xmlns=http://www.openmobilealliance.org/DTD/WV-PA"

    aput-object v16, v0, v5

    const-string/jumbo v16, "xmlns=http://www.openmobilealliance.org/DTD/WV-TRC"

    aput-object v16, v0, v6

    sput-object v0, Lorg/kxml2/wap/wv/WV;->attrStartTable:[Ljava/lang/String;

    const/16 v0, 0x78

    new-array v0, v0, [Ljava/lang/String;

    const-string v16, "AccessType"

    aput-object v16, v0, v1

    const-string v1, "ActiveUsers"

    aput-object v1, v0, v2

    const-string v1, "Admin"

    aput-object v1, v0, v3

    const-string v1, "application/"

    aput-object v1, v0, v4

    const-string v1, "application/vnd.wap.mms-message"

    aput-object v1, v0, v5

    const-string v1, "application/x-sms"

    aput-object v1, v0, v6

    const-string v1, "AutoJoin"

    aput-object v1, v0, v7

    const-string v1, "BASE64"

    aput-object v1, v0, v8

    const-string v1, "Closed"

    aput-object v1, v0, v9

    const-string v1, "Default"

    aput-object v1, v0, v10

    const-string v1, "DisplayName"

    aput-object v1, v0, v11

    const-string v1, "F"

    aput-object v1, v0, v12

    const-string v1, "G"

    aput-object v1, v0, v13

    const-string v1, "GR"

    aput-object v1, v0, v14

    const/16 v1, 0xe

    const-string v2, "http://"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "https://"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "image/"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Inband"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "IM"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "MaxActiveUsers"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Mod"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Name"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "None"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Open"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Outband"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "PR"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Private"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "PrivateMessaging"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "PrivilegeLevel"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Public"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Request"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Response"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Restricted"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "ScreenName"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Searchable"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "SC"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "text/"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "text/plain"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "text/x-vCalendar"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "text/x-vCard"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Topic"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Type"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "US"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string/jumbo v2, "www.wireless-village.org"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "AutoDelete"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "GM"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Validity"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "ShowID"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "GRANTED"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "PENDING"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    aput-object v15, v0, v1

    const/16 v1, 0x38

    aput-object v15, v0, v1

    const/16 v1, 0x39

    aput-object v15, v0, v1

    const/16 v1, 0x3a

    aput-object v15, v0, v1

    const/16 v1, 0x3b

    aput-object v15, v0, v1

    const/16 v1, 0x3c

    aput-object v15, v0, v1

    const/16 v1, 0x3d

    const-string v2, "GROUP_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "GROUP_NAME"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "GROUP_TOPIC"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "GROUP_USER_ID_JOINED"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "GROUP_USER_ID_OWNER"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "HTTP"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "STCP"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "SUDP"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "USER_ALIAS"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "USER_EMAIL_ADDRESS"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "USER_FIRST_NAME"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "USER_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "USER_LAST_NAME"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "USER_MOBILE_NUMBER"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "USER_ONLINE_STATUS"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "WAPSMS"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "WAPUDP"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "WSP"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "GROUP_USER_ID_AUTOJOIN"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    aput-object v15, v0, v1

    const/16 v1, 0x52

    aput-object v15, v0, v1

    const/16 v1, 0x53

    aput-object v15, v0, v1

    const/16 v1, 0x54

    aput-object v15, v0, v1

    const/16 v1, 0x55

    aput-object v15, v0, v1

    const/16 v1, 0x56

    aput-object v15, v0, v1

    const/16 v1, 0x57

    aput-object v15, v0, v1

    const/16 v1, 0x58

    aput-object v15, v0, v1

    const/16 v1, 0x59

    aput-object v15, v0, v1

    const/16 v1, 0x5a

    aput-object v15, v0, v1

    const/16 v1, 0x5b

    const-string v2, "ANGRY"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "ANXIOUS"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "ASHAMED"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "AUDIO_CALL"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "AVAILABLE"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "BORED"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "CALL"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "CLI"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "COMPUTER"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "DISCREET"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "EMAIL"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "EXCITED"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "HAPPY"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "IM"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "IM_OFFLINE"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "IM_ONLINE"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "IN_LOVE"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "INVINCIBLE"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "JEALOUS"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "MMS"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "MOBILE_PHONE"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "NOT_AVAILABLE"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "OTHER"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "PDA"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "SAD"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "SLEEPY"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "SMS"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "VIDEO_CALL"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "VIDEO_STREAM"

    aput-object v2, v0, v1

    sput-object v0, Lorg/kxml2/wap/wv/WV;->attrValueTable:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createParser()Lorg/kxml2/wap/WbxmlParser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/kxml2/wap/WbxmlParser;

    invoke-direct {v0}, Lorg/kxml2/wap/WbxmlParser;-><init>()V

    sget-object v1, Lorg/kxml2/wap/wv/WV;->tagTablePage0:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    sget-object v1, Lorg/kxml2/wap/wv/WV;->tagTablePage1:[Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    sget-object v1, Lorg/kxml2/wap/wv/WV;->tagTablePage2:[Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    sget-object v1, Lorg/kxml2/wap/wv/WV;->tagTablePage3:[Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    sget-object v1, Lorg/kxml2/wap/wv/WV;->tagTablePage4:[Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v1}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    sget-object v1, Lorg/kxml2/wap/wv/WV;->tagTablePage5:[Ljava/lang/String;

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v1}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    sget-object v1, Lorg/kxml2/wap/wv/WV;->tagTablePage6:[Ljava/lang/String;

    const/4 v3, 0x6

    invoke-virtual {v0, v3, v1}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    sget-object v1, Lorg/kxml2/wap/wv/WV;->tagTablePage7:[Ljava/lang/String;

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v1}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    sget-object v1, Lorg/kxml2/wap/wv/WV;->tagTablePage8:[Ljava/lang/String;

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v1}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    sget-object v1, Lorg/kxml2/wap/wv/WV;->tagTablePage9:[Ljava/lang/String;

    const/16 v3, 0x9

    invoke-virtual {v0, v3, v1}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    sget-object v1, Lorg/kxml2/wap/wv/WV;->tagTablePageA:[Ljava/lang/String;

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v1}, Lorg/kxml2/wap/WbxmlParser;->setTagTable(I[Ljava/lang/String;)V

    sget-object v1, Lorg/kxml2/wap/wv/WV;->attrStartTable:[Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/kxml2/wap/WbxmlParser;->setAttrStartTable(I[Ljava/lang/String;)V

    sget-object v1, Lorg/kxml2/wap/wv/WV;->attrValueTable:[Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lorg/kxml2/wap/WbxmlParser;->setAttrValueTable(I[Ljava/lang/String;)V

    return-object v0
.end method
