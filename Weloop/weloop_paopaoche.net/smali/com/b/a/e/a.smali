.class Lcom/b/a/e/a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Lcom/b/a/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/e/a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Lcom/b/a/e/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/b/a/e/h",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 609
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/e/a;->b:Z

    .line 614
    invoke-virtual {p0, p1}, Lcom/b/a/e/a;->a(Ljava/lang/Object;)V

    .line 615
    return-void
.end method


# virtual methods
.method public a()Lcom/b/a/e/b;
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/b/a/e/a;->c:Lcom/b/a/e/h;

    iget-object v0, v0, Lcom/b/a/e/h;->a:Lcom/b/a/e/b;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 633
    if-nez p1, :cond_0

    .line 634
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/b/a/e/a;->c:Lcom/b/a/e/h;

    .line 641
    :goto_0
    return-void

    .line 635
    :cond_0
    instance-of v0, p1, Lcom/b/a/e/h;

    if-eqz v0, :cond_1

    .line 636
    check-cast p1, Lcom/b/a/e/h;

    iput-object p1, p0, Lcom/b/a/e/a;->c:Lcom/b/a/e/h;

    .line 637
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/e/a;->b:Z

    goto :goto_0

    .line 639
    :cond_1
    new-instance v0, Lcom/b/a/e/h;

    sget-object v1, Lcom/b/a/e/b;->d:Lcom/b/a/e/b;

    invoke-direct {v0, v1, p1}, Lcom/b/a/e/h;-><init>(Lcom/b/a/e/b;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/b/a/e/a;->c:Lcom/b/a/e/h;

    goto :goto_0
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 623
    iget-object v0, p0, Lcom/b/a/e/a;->c:Lcom/b/a/e/h;

    if-nez v0, :cond_0

    .line 624
    const/4 v0, 0x0

    .line 628
    :goto_0
    return-object v0

    .line 625
    :cond_0
    iget-boolean v0, p0, Lcom/b/a/e/a;->b:Z

    if-eqz v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/b/a/e/a;->c:Lcom/b/a/e/h;

    goto :goto_0

    .line 628
    :cond_1
    iget-object v0, p0, Lcom/b/a/e/a;->c:Lcom/b/a/e/h;

    iget-object v0, v0, Lcom/b/a/e/h;->b:Ljava/lang/Object;

    goto :goto_0
.end method
