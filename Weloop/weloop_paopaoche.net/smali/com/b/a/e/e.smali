.class Lcom/b/a/e/e;
.super Ljava/util/concurrent/FutureTask;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/e/c;


# direct methods
.method constructor <init>(Lcom/b/a/e/c;Ljava/util/concurrent/Callable;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/b/a/e/e;->a:Lcom/b/a/e/c;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 3

    .prologue
    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/b/a/e/e;->a:Lcom/b/a/e/c;

    invoke-virtual {p0}, Lcom/b/a/e/e;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/b/a/e/c;->b(Lcom/b/a/e/c;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 84
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/f/d;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :catch_1
    move-exception v0

    .line 79
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "An error occured while executing doInBackground()"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 81
    :catch_2
    move-exception v0

    .line 82
    iget-object v0, p0, Lcom/b/a/e/e;->a:Lcom/b/a/e/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/b/a/e/c;->b(Lcom/b/a/e/c;Ljava/lang/Object;)V

    goto :goto_0
.end method
