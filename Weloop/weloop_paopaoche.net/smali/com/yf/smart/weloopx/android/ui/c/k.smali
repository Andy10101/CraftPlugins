.class Lcom/yf/smart/weloopx/android/ui/c/k;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/yf/smart/weloopx/android/ui/c/j;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/android/ui/c/j;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/yf/smart/weloopx/android/ui/c/k;->b:Lcom/yf/smart/weloopx/android/ui/c/j;

    iput-object p2, p0, Lcom/yf/smart/weloopx/android/ui/c/k;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/k;->b:Lcom/yf/smart/weloopx/android/ui/c/j;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/j;->a(Lcom/yf/smart/weloopx/android/ui/c/j;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/k;->b:Lcom/yf/smart/weloopx/android/ui/c/j;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/j;->a(Lcom/yf/smart/weloopx/android/ui/c/j;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yf/smart/weloopx/android/ui/c/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, p0, Lcom/yf/smart/weloopx/android/ui/c/k;->b:Lcom/yf/smart/weloopx/android/ui/c/j;

    invoke-static {v0}, Lcom/yf/smart/weloopx/android/ui/c/j;->a(Lcom/yf/smart/weloopx/android/ui/c/j;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    :cond_0
    return-void
.end method
