.class Lcom/b/a/e/c$b;
.super Landroid/os/Handler;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 372
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 373
    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/e/d;)V
    .locals 0

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/b/a/e/c$b;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 378
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/b/a/e/c$a;

    .line 379
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 388
    :goto_0
    return-void

    .line 382
    :pswitch_0
    iget-object v1, v0, Lcom/b/a/e/c$a;->a:Lcom/b/a/e/c;

    iget-object v0, v0, Lcom/b/a/e/c$a;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Lcom/b/a/e/c;->c(Lcom/b/a/e/c;Ljava/lang/Object;)V

    goto :goto_0

    .line 385
    :pswitch_1
    iget-object v1, v0, Lcom/b/a/e/c$a;->a:Lcom/b/a/e/c;

    iget-object v0, v0, Lcom/b/a/e/c$a;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/b/a/e/c;->b([Ljava/lang/Object;)V

    goto :goto_0

    .line 379
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
