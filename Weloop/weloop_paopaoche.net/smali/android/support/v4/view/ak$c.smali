.class Landroid/support/v4/view/ak$c;
.super Landroid/support/v4/view/ak$b;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 955
    invoke-direct {p0}, Landroid/support/v4/view/ak$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 958
    invoke-static {p1}, Landroid/support/v4/view/an;->a(Landroid/view/View;)I

    move-result v0

    return v0
.end method
