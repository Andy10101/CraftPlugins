.class public Lcom/b/a/d/b/b/a/d;
.super Lcom/b/a/d/b/b/a/a;
.source "ProGuard"


# instance fields
.field private final b:Ljava/io/File;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    const-string v0, "application/octet-stream"

    invoke-direct {p0, p1, v1, v0, v1}, Lcom/b/a/d/b/b/a/d;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0, p3}, Lcom/b/a/d/b/b/a/a;-><init>(Ljava/lang/String;)V

    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    iput-object p1, p0, Lcom/b/a/d/b/b/a/d;->b:Ljava/io/File;

    .line 44
    if-eqz p2, :cond_1

    .line 45
    iput-object p2, p0, Lcom/b/a/d/b/b/a/d;->c:Ljava/lang/String;

    .line 49
    :goto_0
    iput-object p4, p0, Lcom/b/a/d/b/b/a/d;->d:Ljava/lang/String;

    .line 50
    return-void

    .line 47
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/d/b/b/a/d;->c:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/io/OutputStream;)V
    .locals 8

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    const/4 v2, 0x0

    .line 79
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/b/a/d/b/b/a/d;->b:Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 80
    const/16 v0, 0x1000

    :try_start_1
    new-array v0, v0, [B

    .line 82
    :cond_1
    invoke-virtual {v1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 83
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 84
    iget-object v3, p0, Lcom/b/a/d/b/b/a/d;->a:Lcom/b/a/d/b/b/g$a;

    iget-wide v4, v3, Lcom/b/a/d/b/b/g$a;->d:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/b/a/d/b/b/g$a;->d:J

    .line 85
    iget-object v2, p0, Lcom/b/a/d/b/b/a/d;->a:Lcom/b/a/d/b/b/g$a;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/b/a/d/b/b/g$a;->a(Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 86
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v2, "cancel"

    invoke-direct {v0, v2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :catchall_0
    move-exception v0

    :goto_0
    invoke-static {v1}, Lcom/b/a/f/c;->a(Ljava/io/Closeable;)V

    throw v0

    .line 89
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    invoke-static {v1}, Lcom/b/a/f/c;->a(Ljava/io/Closeable;)V

    .line 93
    return-void

    .line 91
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/b/a/d/b/b/a/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/b/a/d/b/b/a/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string v0, "binary"

    return-object v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/b/a/d/b/b/a/d;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method
