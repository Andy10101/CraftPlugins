.class public Lcom/yf/smart/weloopx/android/broadcasts/MyCallReceiver;
.super Lcom/yf/gattlib/notification/b;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/yf/gattlib/notification/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    const v0, 0x7f07012a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    const v0, 0x7f07016a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
