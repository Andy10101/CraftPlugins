.class public Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool$1;,
        Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool$BytesBuffer;
    }
.end annotation


# instance fields
.field private final mBufferSize:I

.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool$BytesBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPoolSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool;->mList:Ljava/util/ArrayList;

    .line 39
    iput p1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool;->mPoolSize:I

    .line 40
    iput p2, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool;->mBufferSize:I

    .line 41
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get()Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool$BytesBuffer;
    .locals 3

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 45
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool;->mList:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool$BytesBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool$BytesBuffer;

    iget v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool;->mBufferSize:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool$BytesBuffer;-><init>(ILcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool$1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized recycle(Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool$BytesBuffer;)V
    .locals 2

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool$BytesBuffer;->data:[B

    array-length v0, v0

    iget v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool;->mBufferSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_1

    .line 55
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 50
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool;->mPoolSize:I

    if-ge v0, v1, :cond_0

    .line 51
    const/4 v0, 0x0

    iput v0, p1, Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool$BytesBuffer;->offset:I

    .line 52
    const/4 v0, 0x0

    iput v0, p1, Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool$BytesBuffer;->length:I

    .line 53
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
