.class public abstract Lcom/b/a/a/a/a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/b/a/a/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/a/a/c",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/b/a/a/a/a;->a:Lcom/b/a/a/a/c;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/b/a/a/a/a;->a:Lcom/b/a/a/a/c;

    invoke-interface {v0, p1}, Lcom/b/a/a/a/c;->a(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    .line 107
    :cond_0
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 108
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/b/a/a/a/a;->a:Lcom/b/a/a/a/c;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/b/a/a/a/a;->a:Lcom/b/a/a/a/c;

    invoke-interface {v0, p1, p2}, Lcom/b/a/a/a/c;->a(Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 92
    :goto_0
    return-void

    .line 87
    :cond_0
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 88
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 90
    :cond_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/b/a/a/a/a;->a:Lcom/b/a/a/a/c;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/b/a/a/a/a;->a:Lcom/b/a/a/a/c;

    invoke-interface {v0, p1, p2}, Lcom/b/a/a/a/c;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 102
    :goto_0
    return-void

    .line 97
    :cond_0
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 98
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 100
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public abstract a(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/b/a/a/c;Lcom/b/a/a/a/b;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            "Lcom/b/a/a/c;",
            "Lcom/b/a/a/a/b;",
            ")V"
        }
    .end annotation
.end method

.method public abstract a(Landroid/view/View;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ")V"
        }
    .end annotation
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Lcom/b/a/a/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Lcom/b/a/a/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Lcom/b/a/a/c;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Lcom/b/a/a/c;",
            "JJ)V"
        }
    .end annotation

    .prologue
    .line 57
    return-void
.end method

.method public b(Landroid/view/View;Ljava/lang/String;Lcom/b/a/a/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Lcom/b/a/a/c;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    return-void
.end method
