.class final Lcom/umeng/update/UmengUpdateAgent$7;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 664
    iput-object p1, p0, Lcom/umeng/update/UmengUpdateAgent$7;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 668
    iget-object v0, p0, Lcom/umeng/update/UmengUpdateAgent$7;->a:Landroid/content/Context;

    const-string v1, "Please copy all resources (res/) from SDK to your project!"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 671
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 672
    return-void
.end method
