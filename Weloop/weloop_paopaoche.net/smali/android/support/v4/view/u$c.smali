.class Landroid/support/v4/view/u$c;
.super Landroid/support/v4/view/u$b;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Landroid/support/v4/view/u$b;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 203
    invoke-static {p1}, Landroid/support/v4/view/w;->a(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public c(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 213
    invoke-static {p1}, Landroid/support/v4/view/w;->b(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
