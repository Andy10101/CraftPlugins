.class public Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool$BytesBuffer;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BytesBuffer"
.end annotation


# instance fields
.field public data:[B

.field public length:I

.field public offset:I


# direct methods
.method private constructor <init>(I)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool$BytesBuffer;->data:[B

    .line 30
    return-void
.end method

.method synthetic constructor <init>(ILcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool$1;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/yf/gattlib/http/afinal/bitmap/core/BytesBufferPool$BytesBuffer;-><init>(I)V

    return-void
.end method
