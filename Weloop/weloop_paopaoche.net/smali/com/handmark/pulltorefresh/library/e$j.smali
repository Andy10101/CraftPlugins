.class public final enum Lcom/handmark/pulltorefresh/library/e$j;
.super Ljava/lang/Enum;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handmark/pulltorefresh/library/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/handmark/pulltorefresh/library/e$j;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/handmark/pulltorefresh/library/e$j;

.field public static final enum b:Lcom/handmark/pulltorefresh/library/e$j;

.field public static final enum c:Lcom/handmark/pulltorefresh/library/e$j;

.field public static final enum d:Lcom/handmark/pulltorefresh/library/e$j;

.field public static final enum e:Lcom/handmark/pulltorefresh/library/e$j;

.field public static final enum f:Lcom/handmark/pulltorefresh/library/e$j;

.field private static final synthetic h:[Lcom/handmark/pulltorefresh/library/e$j;


# instance fields
.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1609
    new-instance v0, Lcom/handmark/pulltorefresh/library/e$j;

    const-string v1, "RESET"

    invoke-direct {v0, v1, v4, v4}, Lcom/handmark/pulltorefresh/library/e$j;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/e$j;->a:Lcom/handmark/pulltorefresh/library/e$j;

    .line 1615
    new-instance v0, Lcom/handmark/pulltorefresh/library/e$j;

    const-string v1, "PULL_TO_REFRESH"

    invoke-direct {v0, v1, v5, v5}, Lcom/handmark/pulltorefresh/library/e$j;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/e$j;->b:Lcom/handmark/pulltorefresh/library/e$j;

    .line 1621
    new-instance v0, Lcom/handmark/pulltorefresh/library/e$j;

    const-string v1, "RELEASE_TO_REFRESH"

    invoke-direct {v0, v1, v6, v6}, Lcom/handmark/pulltorefresh/library/e$j;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/e$j;->c:Lcom/handmark/pulltorefresh/library/e$j;

    .line 1626
    new-instance v0, Lcom/handmark/pulltorefresh/library/e$j;

    const-string v1, "REFRESHING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v7, v2}, Lcom/handmark/pulltorefresh/library/e$j;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/e$j;->d:Lcom/handmark/pulltorefresh/library/e$j;

    .line 1632
    new-instance v0, Lcom/handmark/pulltorefresh/library/e$j;

    const-string v1, "MANUAL_REFRESHING"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v8, v2}, Lcom/handmark/pulltorefresh/library/e$j;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/e$j;->e:Lcom/handmark/pulltorefresh/library/e$j;

    .line 1638
    new-instance v0, Lcom/handmark/pulltorefresh/library/e$j;

    const-string v1, "OVERSCROLLING"

    const/4 v2, 0x5

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/handmark/pulltorefresh/library/e$j;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/e$j;->f:Lcom/handmark/pulltorefresh/library/e$j;

    .line 1603
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/handmark/pulltorefresh/library/e$j;

    sget-object v1, Lcom/handmark/pulltorefresh/library/e$j;->a:Lcom/handmark/pulltorefresh/library/e$j;

    aput-object v1, v0, v4

    sget-object v1, Lcom/handmark/pulltorefresh/library/e$j;->b:Lcom/handmark/pulltorefresh/library/e$j;

    aput-object v1, v0, v5

    sget-object v1, Lcom/handmark/pulltorefresh/library/e$j;->c:Lcom/handmark/pulltorefresh/library/e$j;

    aput-object v1, v0, v6

    sget-object v1, Lcom/handmark/pulltorefresh/library/e$j;->d:Lcom/handmark/pulltorefresh/library/e$j;

    aput-object v1, v0, v7

    sget-object v1, Lcom/handmark/pulltorefresh/library/e$j;->e:Lcom/handmark/pulltorefresh/library/e$j;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/handmark/pulltorefresh/library/e$j;->f:Lcom/handmark/pulltorefresh/library/e$j;

    aput-object v2, v0, v1

    sput-object v0, Lcom/handmark/pulltorefresh/library/e$j;->h:[Lcom/handmark/pulltorefresh/library/e$j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 1660
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1661
    iput p3, p0, Lcom/handmark/pulltorefresh/library/e$j;->g:I

    .line 1662
    return-void
.end method

.method static a(I)Lcom/handmark/pulltorefresh/library/e$j;
    .locals 5

    .prologue
    .line 1648
    invoke-static {}, Lcom/handmark/pulltorefresh/library/e$j;->values()[Lcom/handmark/pulltorefresh/library/e$j;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 1649
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/e$j;->a()I

    move-result v4

    if-ne p0, v4, :cond_0

    .line 1655
    :goto_1
    return-object v0

    .line 1648
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1655
    :cond_1
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$j;->a:Lcom/handmark/pulltorefresh/library/e$j;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/handmark/pulltorefresh/library/e$j;
    .locals 1

    .prologue
    .line 1603
    const-class v0, Lcom/handmark/pulltorefresh/library/e$j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/e$j;

    return-object v0
.end method

.method public static values()[Lcom/handmark/pulltorefresh/library/e$j;
    .locals 1

    .prologue
    .line 1603
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$j;->h:[Lcom/handmark/pulltorefresh/library/e$j;

    invoke-virtual {v0}, [Lcom/handmark/pulltorefresh/library/e$j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/handmark/pulltorefresh/library/e$j;

    return-object v0
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 1665
    iget v0, p0, Lcom/handmark/pulltorefresh/library/e$j;->g:I

    return v0
.end method
