.class Landroid/support/v7/internal/widget/s$b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/s;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/s;)V
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Landroid/support/v7/internal/widget/s$b;->a:Landroid/support/v7/internal/widget/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/s;Landroid/support/v7/internal/widget/t;)V
    .locals 0

    .prologue
    .line 565
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/s$b;-><init>(Landroid/support/v7/internal/widget/s;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 567
    move-object v0, p1

    check-cast v0, Landroid/support/v7/internal/widget/s$c;

    .line 568
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/s$c;->b()Landroid/support/v7/app/a$b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/a$b;->d()V

    .line 569
    iget-object v0, p0, Landroid/support/v7/internal/widget/s$b;->a:Landroid/support/v7/internal/widget/s;

    invoke-static {v0}, Landroid/support/v7/internal/widget/s;->a(Landroid/support/v7/internal/widget/s;)Landroid/support/v7/widget/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/m;->getChildCount()I

    move-result v3

    move v2, v1

    .line 570
    :goto_0
    if-ge v2, v3, :cond_1

    .line 571
    iget-object v0, p0, Landroid/support/v7/internal/widget/s$b;->a:Landroid/support/v7/internal/widget/s;

    invoke-static {v0}, Landroid/support/v7/internal/widget/s;->a(Landroid/support/v7/internal/widget/s;)Landroid/support/v7/widget/m;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/m;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 572
    if-ne v4, p1, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 570
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 572
    goto :goto_1

    .line 574
    :cond_1
    return-void
.end method