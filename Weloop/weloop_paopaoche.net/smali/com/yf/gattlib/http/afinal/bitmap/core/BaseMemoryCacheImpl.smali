.class public Lcom/yf/gattlib/http/afinal/bitmap/core/BaseMemoryCacheImpl;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/yf/gattlib/http/afinal/bitmap/core/IMemoryCache;


# instance fields
.field private final mMemoryCache:Lcom/yf/gattlib/http/afinal/bitmap/core/LruMemoryCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yf/gattlib/http/afinal/bitmap/core/LruMemoryCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/yf/gattlib/http/afinal/bitmap/core/BaseMemoryCacheImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/yf/gattlib/http/afinal/bitmap/core/BaseMemoryCacheImpl$1;-><init>(Lcom/yf/gattlib/http/afinal/bitmap/core/BaseMemoryCacheImpl;I)V

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BaseMemoryCacheImpl;->mMemoryCache:Lcom/yf/gattlib/http/afinal/bitmap/core/LruMemoryCache;

    .line 33
    return-void
.end method


# virtual methods
.method public evictAll()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BaseMemoryCacheImpl;->mMemoryCache:Lcom/yf/gattlib/http/afinal/bitmap/core/LruMemoryCache;

    invoke-virtual {v0}, Lcom/yf/gattlib/http/afinal/bitmap/core/LruMemoryCache;->evictAll()V

    .line 48
    return-void
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BaseMemoryCacheImpl;->mMemoryCache:Lcom/yf/gattlib/http/afinal/bitmap/core/LruMemoryCache;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/http/afinal/bitmap/core/LruMemoryCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BaseMemoryCacheImpl;->mMemoryCache:Lcom/yf/gattlib/http/afinal/bitmap/core/LruMemoryCache;

    invoke-virtual {v0, p1, p2}, Lcom/yf/gattlib/http/afinal/bitmap/core/LruMemoryCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BaseMemoryCacheImpl;->mMemoryCache:Lcom/yf/gattlib/http/afinal/bitmap/core/LruMemoryCache;

    invoke-virtual {v0, p1}, Lcom/yf/gattlib/http/afinal/bitmap/core/LruMemoryCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method
