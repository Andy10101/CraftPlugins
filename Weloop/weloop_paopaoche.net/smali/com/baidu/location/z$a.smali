.class Lcom/baidu/location/z$a;
.super Lcom/baidu/location/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field Y:Ljava/lang/String;

.field Z:Landroid/os/Messenger;

.field a:Z

.field final synthetic aa:Lcom/baidu/location/z;


# direct methods
.method public constructor <init>(Lcom/baidu/location/z;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/baidu/location/z$a;->aa:Lcom/baidu/location/z;

    invoke-direct {p0}, Lcom/baidu/location/ac;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/z$a;->a:Z

    iput-object v1, p0, Lcom/baidu/location/z$a;->Y:Ljava/lang/String;

    iput-object v1, p0, Lcom/baidu/location/z$a;->Z:Landroid/os/Messenger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/location/z$a;->c0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method X()V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/baidu/location/K;->byte()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/z$a;->cY:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/z$a;->aa:Lcom/baidu/location/z;

    invoke-static {v0}, Lcom/baidu/location/z;->a(Lcom/baidu/location/z;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/z$a;->aa:Lcom/baidu/location/z;

    const-string v1, "none"

    invoke-static {v1}, Lcom/baidu/location/Jni;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/location/z;->a(Lcom/baidu/location/z;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/z$a;->c0:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "erpt[0]"

    iget-object v3, p0, Lcom/baidu/location/z$a;->aa:Lcom/baidu/location/z;

    invoke-static {v3}, Lcom/baidu/location/z;->a(Lcom/baidu/location/z;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/location/z$a;->aa:Lcom/baidu/location/z;

    invoke-static {v0}, Lcom/baidu/location/z;->b(Lcom/baidu/location/z;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/baidu/location/z$a;->aa:Lcom/baidu/location/z;

    const-string v1, "none"

    invoke-static {v0, v1}, Lcom/baidu/location/z;->b(Lcom/baidu/location/z;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/baidu/location/z$a;->c0:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "erpt[1]"

    iget-object v3, p0, Lcom/baidu/location/z$a;->aa:Lcom/baidu/location/z;

    invoke-static {v3}, Lcom/baidu/location/z;->b(Lcom/baidu/location/z;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/location/Jni;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/location/z$a;->Y:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "none"

    iput-object v0, p0, Lcom/baidu/location/z$a;->Y:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/baidu/location/z$a;->c0:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "erpt[2]"

    iget-object v3, p0, Lcom/baidu/location/z$a;->Y:Ljava/lang/String;

    invoke-static {v3}, Lcom/baidu/location/Jni;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "&t1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/location/z$a;->aa:Lcom/baidu/location/z;

    invoke-static {v1}, Lcom/baidu/location/z;->c(Lcom/baidu/location/z;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, "&t2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/baidu/location/z$a;->aa:Lcom/baidu/location/z;

    invoke-static {v1}, Lcom/baidu/location/z;->d(Lcom/baidu/location/z;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/baidu/location/ao;->bg()Lcom/baidu/location/ao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/location/ao;->ba()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    iget-object v1, p0, Lcom/baidu/location/z$a;->c0:Ljava/util/List;

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "erpt[3]"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/location/Jni;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/baidu/location/z$a;->aa:Lcom/baidu/location/z;

    invoke-static {v0, v4}, Lcom/baidu/location/z;->a(Lcom/baidu/location/z;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/z$a;->aa:Lcom/baidu/location/z;

    invoke-static {v0, v4}, Lcom/baidu/location/z;->b(Lcom/baidu/location/z;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/location/z$a;->aa:Lcom/baidu/location/z;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/baidu/location/z;->a(Lcom/baidu/location/z;J)J

    return-void
.end method

.method do(Z)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/location/z$a;->c0:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/z$a;->c0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    if-eqz p1, :cond_1

    const/16 v0, 0xcd

    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/z$a;->Z:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/location/z$a;->a:Z

    return-void

    :cond_1
    const/16 v0, 0xcc

    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public try(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v0, p0, Lcom/baidu/location/z$a;->Z:Landroid/os/Messenger;

    iget-boolean v0, p0, Lcom/baidu/location/z$a;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0xcc

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/z$a;->Z:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/z$a;->a:Z

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "errInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/z$a;->Y:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/location/z$a;->R()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
