.class public Lcom/handmark/pulltorefresh/library/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/a;


# instance fields
.field private final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/handmark/pulltorefresh/library/a/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/b;->a:Ljava/util/HashSet;

    .line 16
    return-void
.end method


# virtual methods
.method public a(Lcom/handmark/pulltorefresh/library/a/d;)V
    .locals 1

    .prologue
    .line 28
    if-eqz p1, :cond_0

    .line 29
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/b;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_0
    return-void
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/b;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/a/d;

    .line 36
    invoke-virtual {v0, p1}, Lcom/handmark/pulltorefresh/library/a/d;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/b;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/a/d;

    .line 43
    invoke-virtual {v0, p1}, Lcom/handmark/pulltorefresh/library/a/d;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/b;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/a/d;

    .line 57
    invoke-virtual {v0, p1}, Lcom/handmark/pulltorefresh/library/a/d;->setPullLabel(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/b;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/a/d;

    .line 50
    invoke-virtual {v0, p1}, Lcom/handmark/pulltorefresh/library/a/d;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/b;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/a/d;

    .line 64
    invoke-virtual {v0, p1}, Lcom/handmark/pulltorefresh/library/a/d;->setReleaseLabel(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method
