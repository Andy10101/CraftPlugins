.class public Lcom/yf/gattlib/a/e;
.super Landroid/database/Observable;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable",
        "<",
        "Lcom/yf/gattlib/a/f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 10
    iget-object v2, p0, Lcom/yf/gattlib/a/e;->mObservers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/yf/gattlib/a/e;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 12
    iget-object v0, p0, Lcom/yf/gattlib/a/e;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/a/f;

    invoke-interface {v0, p1, p2}, Lcom/yf/gattlib/a/f;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 14
    :cond_0
    monitor-exit v2

    .line 15
    return-void

    .line 14
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
