.class Lcom/yf/gattlib/http/afinal/core/AsyncTask$AsyncTaskResult;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/gattlib/http/afinal/core/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lcom/yf/gattlib/http/afinal/core/AsyncTask;


# direct methods
.method varargs constructor <init>(Lcom/yf/gattlib/http/afinal/core/AsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yf/gattlib/http/afinal/core/AsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    iput-object p1, p0, Lcom/yf/gattlib/http/afinal/core/AsyncTask$AsyncTaskResult;->mTask:Lcom/yf/gattlib/http/afinal/core/AsyncTask;

    .line 520
    iput-object p2, p0, Lcom/yf/gattlib/http/afinal/core/AsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    .line 521
    return-void
.end method