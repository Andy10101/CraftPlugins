.class Landroid/support/v4/view/aa;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method static a(Landroid/view/MotionEvent;I)F
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    return v0
.end method