.class public Lc/a/d;
.super Lc/a/g;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a/d$a;,
        Lc/a/d$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lc/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/a/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lc/a/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/a/e;)Lc/a/f$a;
    .locals 1

    .prologue
    .line 41
    const-class v0, Lc/a/f;

    invoke-virtual {p0, p1, v0}, Lc/a/d;->execute(Lc/a/h;Ljava/lang/Class;)Lc/a/i;

    move-result-object v0

    check-cast v0, Lc/a/f;

    .line 42
    if-nez v0, :cond_0

    sget-object v0, Lc/a/f$a;->b:Lc/a/f$a;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lc/a/f;->a:Lc/a/f$a;

    goto :goto_0
.end method

.method public a(Lc/a/e;Lc/a/d$a;)V
    .locals 3

    .prologue
    .line 62
    :try_start_0
    new-instance v0, Lc/a/d$b;

    invoke-direct {v0, p0, p1, p2}, Lc/a/d$b;-><init>(Lc/a/d;Lc/a/e;Lc/a/d$a;)V

    .line 63
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lc/a/d$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    .line 65
    sget-object v1, Lc/a/d;->a:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lc/a/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 66
    if-eqz p2, :cond_0

    .line 67
    sget-object v0, Lc/a/f$a;->b:Lc/a/f$a;

    invoke-interface {p2, v0}, Lc/a/d$a;->a(Lc/a/f$a;)V

    goto :goto_0
.end method
