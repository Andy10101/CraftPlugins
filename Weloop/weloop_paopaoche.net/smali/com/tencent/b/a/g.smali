.class public Lcom/tencent/b/a/g;
.super Ljava/lang/Object;


# static fields
.field private static volatile b:Lcom/tencent/b/a/g;


# instance fields
.field private a:Ljava/util/Timer;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/b/a/g;->b:Lcom/tencent/b/a/g;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/b/a/g;->a:Ljava/util/Timer;

    iput-object v0, p0, Lcom/tencent/b/a/g;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/b/a/g;->c:Landroid/content/Context;

    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/tencent/b/a/g;->a:Ljava/util/Timer;

    return-void
.end method

.method static synthetic a(Lcom/tencent/b/a/g;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/b/a/g;->c:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/b/a/g;
    .locals 2

    sget-object v0, Lcom/tencent/b/a/g;->b:Lcom/tencent/b/a/g;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/b/a/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/b/a/g;->b:Lcom/tencent/b/a/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/b/a/g;

    invoke-direct {v0, p0}, Lcom/tencent/b/a/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/b/a/g;->b:Lcom/tencent/b/a/g;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/b/a/g;->b:Lcom/tencent/b/a/g;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-static {}, Lcom/tencent/b/a/t;->a()Lcom/tencent/b/a/u;

    move-result-object v0

    sget-object v1, Lcom/tencent/b/a/u;->f:Lcom/tencent/b/a/u;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/tencent/b/a/t;->l()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {}, Lcom/tencent/b/a/t;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/tencent/b/a/b/l;->c()Lcom/tencent/b/a/b/b;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setupPeriodTimer delay:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/b/a/b/b;->a(Ljava/lang/Object;)V

    :cond_0
    new-instance v2, Lcom/tencent/b/a/h;

    invoke-direct {v2, p0}, Lcom/tencent/b/a/h;-><init>(Lcom/tencent/b/a/g;)V

    iget-object v3, p0, Lcom/tencent/b/a/g;->a:Ljava/util/Timer;

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/tencent/b/a/t;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/tencent/b/a/b/l;->c()Lcom/tencent/b/a/b/b;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "setupPeriodTimer schedule delay:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/b/a/b/b;->a(Ljava/lang/Object;)V

    :cond_1
    iget-object v3, p0, Lcom/tencent/b/a/g;->a:Ljava/util/Timer;

    invoke-virtual {v3, v2, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/tencent/b/a/t;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/tencent/b/a/b/l;->c()Lcom/tencent/b/a/b/b;

    move-result-object v0

    const-string v1, "setupPeriodTimer schedule timer == null"

    invoke-virtual {v0, v1}, Lcom/tencent/b/a/b/b;->c(Ljava/lang/Object;)V

    goto :goto_0
.end method
