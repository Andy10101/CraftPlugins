.class final Lcom/yf/lib/notification/views/e;
.super Ljava/lang/ThreadLocal;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/yf/lib/notification/views/e;->a()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method