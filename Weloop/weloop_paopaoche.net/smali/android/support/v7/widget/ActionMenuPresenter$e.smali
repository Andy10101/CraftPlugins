.class Landroid/support/v7/widget/ActionMenuPresenter$e;
.super Landroid/support/v7/internal/view/menu/l;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic c:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/internal/view/menu/f;Landroid/view/View;Z)V
    .locals 6

    .prologue
    .line 673
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$e;->c:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 674
    sget v5, Landroid/support/v7/appcompat/R$attr;->actionOverflowMenuStyle:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/internal/view/menu/l;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/f;Landroid/view/View;ZI)V

    .line 675
    const v0, 0x800005

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$e;->a(I)V

    .line 676
    iget-object v0, p1, Landroid/support/v7/widget/ActionMenuPresenter;->g:Landroid/support/v7/widget/ActionMenuPresenter$f;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$e;->a(Landroid/support/v7/internal/view/menu/m$a;)V

    .line 677
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 681
    invoke-super {p0}, Landroid/support/v7/internal/view/menu/l;->onDismiss()V

    .line 682
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$e;->c:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-static {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->c(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/f;->close()V

    .line 683
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$e;->c:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->a(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$e;)Landroid/support/v7/widget/ActionMenuPresenter$e;

    .line 684
    return-void
.end method
