.class Lcom/b/a/a/b/c;
.super Lcom/b/a/b/g;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/b/a/b/g",
        "<",
        "Lcom/b/a/a/b/b$b;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/a/b/b;


# direct methods
.method constructor <init>(Lcom/b/a/a/b/b;I)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/b/a/a/b/c;->a:Lcom/b/a/a/b/b;

    invoke-direct {p0, p2}, Lcom/b/a/b/g;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/b/a/a/b/b$b;Landroid/graphics/Bitmap;)I
    .locals 2

    .prologue
    .line 77
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 78
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 70
    check-cast p1, Lcom/b/a/a/b/b$b;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/b/a/a/b/c;->a(Lcom/b/a/a/b/b$b;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method
