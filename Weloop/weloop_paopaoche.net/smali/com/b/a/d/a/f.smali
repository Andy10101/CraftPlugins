.class public Lcom/b/a/d/a/f;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/apache/http/HttpEntity;Lcom/b/a/d/a/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .prologue
    .line 30
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0

    .line 32
    :cond_0
    const-wide/16 v4, 0x0

    .line 33
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    .line 35
    if-eqz p2, :cond_1

    const/4 v6, 0x1

    move-object v1, p2

    invoke-interface/range {v1 .. v6}, Lcom/b/a/d/a/e;->a(JJZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 36
    const/4 v0, 0x0

    goto :goto_0

    .line 39
    :cond_1
    const/4 v1, 0x0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 43
    :try_start_1
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v7, p3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v8, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 44
    const-string v1, ""

    .line 45
    :cond_2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v9, 0xa

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    invoke-static {v1, p3}, Lcom/b/a/f/e;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v10

    add-long/2addr v4, v10

    .line 48
    if-eqz p2, :cond_2

    .line 49
    const/4 v6, 0x0

    move-object v1, p2

    invoke-interface/range {v1 .. v6}, Lcom/b/a/d/a/e;->a(JJZ)Z

    move-result v1

    if-nez v1, :cond_2

    .line 54
    :cond_3
    if-eqz p2, :cond_4

    .line 55
    const/4 v6, 0x1

    move-object v1, p2

    invoke-interface/range {v1 .. v6}, Lcom/b/a/d/a/e;->a(JJZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    :cond_4
    invoke-static {v7}, Lcom/b/a/f/c;->a(Ljava/io/Closeable;)V

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    :goto_1
    invoke-static {v1}, Lcom/b/a/f/c;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v7

    goto :goto_1
.end method
