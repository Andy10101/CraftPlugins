.class public Lcom/yf/smart/weloopx/g/e;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field protected static a:[C

.field protected static b:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/yf/smart/weloopx/g/e;->a:[C

    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/yf/smart/weloopx/g/e;->b:Ljava/security/MessageDigest;

    .line 22
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sput-object v0, Lcom/yf/smart/weloopx/g/e;->b:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_0
    return-void

    .line 23
    :catch_0
    move-exception v0

    goto :goto_0

    .line 17
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 34
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 35
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 36
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    .line 38
    sget-object v1, Lcom/yf/smart/weloopx/g/e;->b:Ljava/security/MessageDigest;

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 39
    if-eqz v6, :cond_0

    .line 40
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 42
    :cond_0
    sget-object v0, Lcom/yf/smart/weloopx/g/e;->b:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/yf/smart/weloopx/g/e;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/yf/smart/weloopx/g/e;->a([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([BII)Ljava/lang/String;
    .locals 3

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuffer;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 60
    add-int v1, p1, p2

    .line 61
    :goto_0
    if-ge p1, v1, :cond_0

    .line 62
    aget-byte v2, p0, p1

    invoke-static {v2, v0}, Lcom/yf/smart/weloopx/g/e;->a(BLjava/lang/StringBuffer;)V

    .line 61
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(BLjava/lang/StringBuffer;)V
    .locals 3

    .prologue
    .line 68
    sget-object v0, Lcom/yf/smart/weloopx/g/e;->a:[C

    and-int/lit16 v1, p0, 0xf0

    shr-int/lit8 v1, v1, 0x4

    aget-char v0, v0, v1

    .line 69
    sget-object v1, Lcom/yf/smart/weloopx/g/e;->a:[C

    and-int/lit8 v2, p0, 0xf

    aget-char v1, v1, v2

    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 71
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 72
    return-void
.end method
