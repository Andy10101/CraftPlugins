.class public Lcn/sharesdk/google/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/google/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Intent;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p0, v0}, Lcn/sharesdk/google/c$a;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/google/c$a;->a:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .locals 7

    const/4 v0, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lcn/sharesdk/google/c$a;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/sharesdk/google/c$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_1

    move v1, v0

    :goto_0
    iget-object v3, p0, Lcn/sharesdk/google/c$a;->a:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, p0, Lcn/sharesdk/google/c$a;->a:Landroid/content/Intent;

    const-string v5, "com.google.android.apps.plus.GOOGLE_INTERACTIVE_POST"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v1, :cond_0

    if-nez v4, :cond_2

    :cond_0
    :goto_1
    const-string v5, "Call-to-action buttons are only available for URLs."

    invoke-static {v0, v5}, Lcn/sharesdk/google/c;->a(ZLjava/lang/Object;)V

    if-eqz v4, :cond_3

    iget-object v0, p0, Lcn/sharesdk/google/c$a;->a:Landroid/content/Intent;

    const-string v5, "com.google.android.apps.plus.CONTENT_URL"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The content URL is required for interactive posts."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcn/sharesdk/google/c$a;->a:Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcn/sharesdk/google/c$a;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/sharesdk/google/c$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v5, p0, Lcn/sharesdk/google/c$a;->a:Landroid/content/Intent;

    const-string v6, "android.intent.extra.STREAM"

    iget-object v0, p0, Lcn/sharesdk/google/c$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sharesdk/google/c$a;->b:Ljava/util/ArrayList;

    :cond_4
    if-eqz v1, :cond_5

    if-nez v3, :cond_5

    iget-object v0, p0, Lcn/sharesdk/google/c$a;->a:Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcn/sharesdk/google/c$a;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcn/sharesdk/google/c$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcn/sharesdk/google/c$a;->a:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    iget-object v2, p0, Lcn/sharesdk/google/c$a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_5
    :goto_3
    if-eqz v4, :cond_8

    iget-object v0, p0, Lcn/sharesdk/google/c$a;->a:Landroid/content/Intent;

    const-string v1, "com.google.android.apps.plus.CONTENT_URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcn/sharesdk/google/c$a;->a:Landroid/content/Intent;

    const-string v1, "com.google.android.apps.plus.CONTENT_DEEP_LINK_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must set content URL or content deep-link ID to use a call-to-action button."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, p0, Lcn/sharesdk/google/c$a;->a:Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcn/sharesdk/google/c$a;->a:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcn/sharesdk/google/c$a;->a:Landroid/content/Intent;

    const-string v1, "com.google.android.apps.plus"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcn/sharesdk/google/c$a;->a:Landroid/content/Intent;

    return-object v0
.end method

.method public a(Landroid/net/Uri;)Lcn/sharesdk/google/c$a;
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/sharesdk/google/c$a;->b:Ljava/util/ArrayList;

    iget-object v0, p0, Lcn/sharesdk/google/c$a;->a:Landroid/content/Intent;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lcn/sharesdk/google/c$a;
    .locals 2

    iget-object v0, p0, Lcn/sharesdk/google/c$a;->a:Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcn/sharesdk/google/c$a;
    .locals 1

    iget-object v0, p0, Lcn/sharesdk/google/c$a;->a:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method
