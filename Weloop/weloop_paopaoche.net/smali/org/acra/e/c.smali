.class public final Lorg/acra/e/c;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/acra/e/c$a;
    }
.end annotation


# static fields
.field private static synthetic g:[I


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0xbb8

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput v0, p0, Lorg/acra/e/c;->c:I

    .line 93
    iput v0, p0, Lorg/acra/e/c;->d:I

    .line 94
    const/4 v0, 0x3

    iput v0, p0, Lorg/acra/e/c;->e:I

    .line 45
    return-void
.end method

.method static synthetic a()[I
    .locals 3

    .prologue
    .line 45
    sget-object v0, Lorg/acra/e/c;->g:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/acra/sender/HttpSender$Method;->values()[Lorg/acra/sender/HttpSender$Method;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/acra/sender/HttpSender$Method;->POST:Lorg/acra/sender/HttpSender$Method;

    invoke-virtual {v1}, Lorg/acra/sender/HttpSender$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lorg/acra/sender/HttpSender$Method;->PUT:Lorg/acra/sender/HttpSender$Method;

    invoke-virtual {v1}, Lorg/acra/sender/HttpSender$Method;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lorg/acra/e/c;->g:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static b(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 286
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 287
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    const/16 v0, 0x26

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 290
    :cond_1
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 291
    if-nez v0, :cond_2

    const-string v0, ""

    .line 292
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private b()Lorg/apache/http/client/HttpClient;
    .locals 7

    .prologue
    const/16 v6, 0x1bb

    .line 200
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 201
    const-string v1, "http.protocol.cookie-policy"

    const-string v2, "rfc2109"

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 202
    iget v1, p0, Lorg/acra/e/c;->c:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 203
    iget v1, p0, Lorg/acra/e/c;->d:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 204
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 206
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 207
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    new-instance v4, Lorg/apache/http/conn/scheme/PlainSocketFactory;

    invoke-direct {v4}, Lorg/apache/http/conn/scheme/PlainSocketFactory;-><init>()V

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 208
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/b;

    move-result-object v2

    invoke-virtual {v2}, Lorg/acra/b;->N()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    new-instance v4, Lorg/acra/e/b;

    invoke-direct {v4}, Lorg/acra/e/b;-><init>()V

    invoke-direct {v2, v3, v4, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 214
    :goto_0
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 215
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 217
    new-instance v2, Lorg/acra/e/c$a;

    iget v3, p0, Lorg/acra/e/c;->e:I

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lorg/acra/e/c$a;-><init>(Lorg/apache/http/params/HttpParams;ILorg/acra/e/c$a;)V

    .line 218
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 220
    return-object v1

    .line 211
    :cond_0
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v4

    invoke-direct {v2, v3, v4, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    goto :goto_0
.end method

.method private b(Ljava/net/URL;Lorg/acra/sender/HttpSender$Method;Ljava/lang/String;Lorg/acra/sender/HttpSender$Type;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    .locals 4

    .prologue
    .line 239
    invoke-static {}, Lorg/acra/e/c;->a()[I

    move-result-object v0

    invoke-virtual {p2}, Lorg/acra/sender/HttpSender$Method;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 247
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown method: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/acra/sender/HttpSender$Method;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :pswitch_0
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 250
    :goto_0
    invoke-direct {p0}, Lorg/acra/e/c;->c()Lorg/apache/http/auth/UsernamePasswordCredentials;

    move-result-object v0

    .line 251
    if-eqz v0, :cond_0

    .line 252
    const-string v1, "UTF-8"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lorg/apache/http/impl/auth/BasicScheme;->authenticate(Lorg/apache/http/auth/Credentials;Ljava/lang/String;Z)Lorg/apache/http/Header;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->addHeader(Lorg/apache/http/Header;)V

    .line 254
    :cond_0
    const-string v0, "User-Agent"

    const-string v1, "Android"

    invoke-virtual {v2, v0, v1}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v0, "Accept"

    .line 257
    const-string v1, "text/html,application/xml,application/json,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5"

    .line 256
    invoke-virtual {v2, v0, v1}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v0, "Content-Type"

    invoke-virtual {p4}, Lorg/acra/sender/HttpSender$Type;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lorg/acra/e/c;->f:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lorg/acra/e/c;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 262
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 269
    :cond_1
    new-instance v0, Lorg/apache/http/entity/StringEntity;

    const-string v1, "UTF-8"

    invoke-direct {v0, p3, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 271
    return-object v2

    .line 244
    :pswitch_1
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 245
    goto :goto_0

    .line 263
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 264
    iget-object v1, p0, Lorg/acra/e/c;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 265
    invoke-virtual {v2, v0, v1}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private c()Lorg/apache/http/auth/UsernamePasswordCredentials;
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lorg/acra/e/c;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/acra/e/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 229
    :cond_0
    new-instance v0, Lorg/apache/http/auth/UsernamePasswordCredentials;

    iget-object v1, p0, Lorg/acra/e/c;->a:Ljava/lang/String;

    iget-object v2, p0, Lorg/acra/e/c;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 106
    iput p1, p0, Lorg/acra/e/c;->c:I

    .line 107
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lorg/acra/e/c;->a:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public a(Ljava/net/URL;Lorg/acra/sender/HttpSender$Method;Ljava/lang/String;Lorg/acra/sender/HttpSender$Type;)V
    .locals 6

    .prologue
    .line 141
    invoke-direct {p0}, Lorg/acra/e/c;->b()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 142
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/acra/e/c;->b(Ljava/net/URL;Lorg/acra/sender/HttpSender$Method;Ljava/lang/String;Lorg/acra/sender/HttpSender$Type;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v2

    .line 144
    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/d/a;

    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Sending request to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/acra/d/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v1, 0x0

    .line 152
    :try_start_0
    new-instance v3, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v3}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-interface {v0, v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 153
    if-eqz v1, :cond_3

    .line 154
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_2

    .line 156
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 158
    const-string v2, "409"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 161
    const-string v2, "403"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 164
    const-string v2, "4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "5"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 173
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Host returned error code "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :catchall_0
    move-exception v0

    .line 190
    if-eqz v1, :cond_1

    .line 191
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 193
    :cond_1
    throw v0

    .line 180
    :cond_2
    :try_start_1
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    :cond_3
    if-eqz v1, :cond_4

    .line 191
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 194
    :cond_4
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    iput-object p1, p0, Lorg/acra/e/c;->f:Ljava/util/Map;

    .line 115
    return-void
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 110
    iput p1, p0, Lorg/acra/e/c;->d:I

    .line 111
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lorg/acra/e/c;->b:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 126
    iput p1, p0, Lorg/acra/e/c;->e:I

    .line 127
    return-void
.end method
