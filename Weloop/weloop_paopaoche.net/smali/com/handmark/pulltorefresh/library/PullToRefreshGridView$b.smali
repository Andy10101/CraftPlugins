.class final Lcom/handmark/pulltorefresh/library/PullToRefreshGridView$b;
.super Lcom/handmark/pulltorefresh/library/PullToRefreshGridView$a;
.source "ProGuard"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;


# direct methods
.method public constructor <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView$b;->b:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView$a;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method


# virtual methods
.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 7

    .prologue
    .line 94
    invoke-super/range {p0 .. p9}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView$a;->overScrollBy(IIIIIIIIZ)Z

    move-result v6

    .line 98
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView$b;->b:Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;

    move v1, p1

    move v2, p3

    move v3, p2

    move v4, p4

    move/from16 v5, p9

    invoke-static/range {v0 .. v5}, Lcom/handmark/pulltorefresh/library/c;->a(Lcom/handmark/pulltorefresh/library/e;IIIIZ)V

    .line 100
    return v6
.end method
