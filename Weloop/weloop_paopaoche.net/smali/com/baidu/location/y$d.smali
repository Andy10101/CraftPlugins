.class Lcom/baidu/location/y$d;
.super Lcom/baidu/location/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic Y:Lcom/baidu/location/y;

.field a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/baidu/location/y;)V
    .locals 1

    iput-object p1, p0, Lcom/baidu/location/y$d;->Y:Lcom/baidu/location/y;

    invoke-direct {p0}, Lcom/baidu/location/ac;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/location/y$d;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/y$d;->c0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method X()V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/baidu/location/K;->for()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/y$d;->cY:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/y$d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/baidu/location/Jni;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/location/y$d;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/location/y$d;->c0:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "bloc"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "&ki=%s&sn=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/baidu/location/y$d;->Y:Lcom/baidu/location/y;

    invoke-static {v4}, Lcom/baidu/location/y;->a(Lcom/baidu/location/y;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/location/al;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/baidu/location/y$d;->Y:Lcom/baidu/location/y;

    invoke-static {v4}, Lcom/baidu/location/y;->a(Lcom/baidu/location/y;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/location/al;->if(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/y$d;->c0:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "ext"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/location/Jni;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v1, "%d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/location/y$d;->c0:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "trtm"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method do(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/baidu/location/y$d;->cZ:Lorg/apache/http/HttpEntity;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/y$d;->cZ:Lorg/apache/http/HttpEntity;

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :try_start_1
    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0, v1}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/baidu/location/y$d;->Y:Lcom/baidu/location/y;

    invoke-static {v1}, Lcom/baidu/location/y;->b(Lcom/baidu/location/y;)Lcom/baidu/location/y$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/baidu/location/y$a;->onReceiveLocation(Lcom/baidu/location/BDLocation;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/baidu/location/y$d;->c0:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/y$d;->c0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v0, Lcom/baidu/location/BDLocation;

    invoke-direct {v0}, Lcom/baidu/location/BDLocation;-><init>()V

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Lcom/baidu/location/BDLocation;->setLocType(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/y$d;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/location/y$d;->R()V

    return-void
.end method
