.class Luk/co/chrisjenx/calligraphy/f;
.super Landroid/view/LayoutInflater;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/co/chrisjenx/calligraphy/f$a;,
        Luk/co/chrisjenx/calligraphy/f$c;,
        Luk/co/chrisjenx/calligraphy/f$b;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:I

.field private final c:Luk/co/chrisjenx/calligraphy/c;

.field private d:Z

.field private e:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.widget."

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.webkit."

    aput-object v2, v0, v1

    sput-object v0, Luk/co/chrisjenx/calligraphy/f;->a:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/view/LayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Luk/co/chrisjenx/calligraphy/f;->d:Z

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Luk/co/chrisjenx/calligraphy/f;->e:Ljava/lang/reflect/Field;

    .line 42
    iput p3, p0, Luk/co/chrisjenx/calligraphy/f;->b:I

    .line 43
    new-instance v0, Luk/co/chrisjenx/calligraphy/c;

    invoke-direct {v0, p3}, Luk/co/chrisjenx/calligraphy/c;-><init>(I)V

    iput-object v0, p0, Luk/co/chrisjenx/calligraphy/f;->c:Luk/co/chrisjenx/calligraphy/c;

    .line 44
    invoke-direct {p0}, Luk/co/chrisjenx/calligraphy/f;->a()V

    .line 45
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 196
    invoke-static {}, Luk/co/chrisjenx/calligraphy/a;->a()Luk/co/chrisjenx/calligraphy/a;

    move-result-object v0

    invoke-virtual {v0}, Luk/co/chrisjenx/calligraphy/a;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-object p2

    .line 197
    :cond_1
    if-nez p2, :cond_0

    const/16 v0, 0x2e

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 198
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/f;->e:Ljava/lang/reflect/Field;

    if-nez v0, :cond_2

    .line 199
    const-class v0, Landroid/view/LayoutInflater;

    const-string v1, "mConstructorArgs"

    invoke-static {v0, v1}, Luk/co/chrisjenx/calligraphy/j;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Luk/co/chrisjenx/calligraphy/f;->e:Ljava/lang/reflect/Field;

    .line 201
    :cond_2
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/f;->e:Ljava/lang/reflect/Field;

    invoke-static {v0, p0}, Luk/co/chrisjenx/calligraphy/j;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 202
    aget-object v1, v0, v3

    .line 203
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    :cond_3
    aput-object p4, v0, v3

    .line 204
    iget-object v2, p0, Luk/co/chrisjenx/calligraphy/f;->e:Ljava/lang/reflect/Field;

    invoke-static {v2, p0, v0}, Luk/co/chrisjenx/calligraphy/j;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 206
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p3, v2, p5}, Luk/co/chrisjenx/calligraphy/f;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p2

    .line 209
    aput-object v1, v0, v3

    .line 210
    iget-object v1, p0, Luk/co/chrisjenx/calligraphy/f;->e:Ljava/lang/reflect/Field;

    invoke-static {v1, p0, v0}, Luk/co/chrisjenx/calligraphy/j;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 207
    :catch_0
    move-exception v2

    .line 209
    aput-object v1, v0, v3

    .line 210
    iget-object v1, p0, Luk/co/chrisjenx/calligraphy/f;->e:Ljava/lang/reflect/Field;

    invoke-static {v1, p0, v0}, Luk/co/chrisjenx/calligraphy/j;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 209
    :catchall_0
    move-exception v2

    aput-object v1, v0, v3

    .line 210
    iget-object v1, p0, Luk/co/chrisjenx/calligraphy/f;->e:Ljava/lang/reflect/Field;

    invoke-static {v1, p0, v0}, Luk/co/chrisjenx/calligraphy/j;->a(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    throw v2
.end method

.method static synthetic a(Luk/co/chrisjenx/calligraphy/f;Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 20
    invoke-direct/range {p0 .. p5}, Luk/co/chrisjenx/calligraphy/f;->a(Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 70
    invoke-virtual {p0}, Luk/co/chrisjenx/calligraphy/f;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Luk/co/chrisjenx/calligraphy/f;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    instance-of v0, v0, Luk/co/chrisjenx/calligraphy/f$c;

    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p0}, Luk/co/chrisjenx/calligraphy/f;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    invoke-virtual {p0, v0}, Luk/co/chrisjenx/calligraphy/f;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 76
    :cond_0
    invoke-virtual {p0}, Luk/co/chrisjenx/calligraphy/f;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Luk/co/chrisjenx/calligraphy/f;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    instance-of v0, v0, Luk/co/chrisjenx/calligraphy/f$b;

    if-nez v0, :cond_1

    .line 77
    invoke-virtual {p0}, Luk/co/chrisjenx/calligraphy/f;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    invoke-virtual {p0, v0}, Luk/co/chrisjenx/calligraphy/f;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 79
    :cond_1
    return-void
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 104
    iget-boolean v0, p0, Luk/co/chrisjenx/calligraphy/f;->d:Z

    if-eqz v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-static {}, Luk/co/chrisjenx/calligraphy/a;->a()Luk/co/chrisjenx/calligraphy/a;

    move-result-object v0

    invoke-virtual {v0}, Luk/co/chrisjenx/calligraphy/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Luk/co/chrisjenx/calligraphy/f;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/view/LayoutInflater$Factory2;

    if-nez v0, :cond_2

    .line 109
    iput-boolean v6, p0, Luk/co/chrisjenx/calligraphy/f;->d:Z

    goto :goto_0

    .line 113
    :cond_2
    const-class v0, Landroid/view/LayoutInflater;

    const-string v1, "setPrivateFactory"

    invoke-static {v0, v1}, Luk/co/chrisjenx/calligraphy/j;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 116
    if-eqz v1, :cond_3

    .line 117
    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Luk/co/chrisjenx/calligraphy/f$a;

    invoke-virtual {p0}, Luk/co/chrisjenx/calligraphy/f;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater$Factory2;

    iget-object v5, p0, Luk/co/chrisjenx/calligraphy/f;->c:Luk/co/chrisjenx/calligraphy/c;

    invoke-direct {v4, v0, p0, v5}, Luk/co/chrisjenx/calligraphy/f$a;-><init>(Landroid/view/LayoutInflater$Factory2;Luk/co/chrisjenx/calligraphy/f;Luk/co/chrisjenx/calligraphy/c;)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Luk/co/chrisjenx/calligraphy/j;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 121
    :cond_3
    iput-boolean v6, p0, Luk/co/chrisjenx/calligraphy/f;->d:Z

    goto :goto_0
.end method


# virtual methods
.method public cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Luk/co/chrisjenx/calligraphy/f;

    iget v1, p0, Luk/co/chrisjenx/calligraphy/f;->b:I

    invoke-direct {v0, p0, p1, v1}, Luk/co/chrisjenx/calligraphy/f;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;I)V

    return-object v0
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Luk/co/chrisjenx/calligraphy/f;->b()V

    .line 60
    invoke-super {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/f;->c:Luk/co/chrisjenx/calligraphy/c;

    invoke-super {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Luk/co/chrisjenx/calligraphy/f;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p3}, Luk/co/chrisjenx/calligraphy/c;->a(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 6

    .prologue
    .line 159
    const/4 v1, 0x0

    .line 160
    sget-object v2, Luk/co/chrisjenx/calligraphy/f;->a:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    move v5, v0

    move-object v0, v1

    move v1, v5

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 162
    :try_start_0
    invoke-virtual {p0, p1, v4, p2}, Luk/co/chrisjenx/calligraphy/f;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 160
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/view/LayoutInflater;->onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 170
    :cond_1
    iget-object v1, p0, Luk/co/chrisjenx/calligraphy/f;->c:Luk/co/chrisjenx/calligraphy/c;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p2}, Luk/co/chrisjenx/calligraphy/c;->a(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 163
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public setFactory(Landroid/view/LayoutInflater$Factory;)V
    .locals 2

    .prologue
    .line 84
    instance-of v0, p1, Luk/co/chrisjenx/calligraphy/f$b;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Luk/co/chrisjenx/calligraphy/f$b;

    iget-object v1, p0, Luk/co/chrisjenx/calligraphy/f;->c:Luk/co/chrisjenx/calligraphy/c;

    invoke-direct {v0, p1, p0, v1}, Luk/co/chrisjenx/calligraphy/f$b;-><init>(Landroid/view/LayoutInflater$Factory;Luk/co/chrisjenx/calligraphy/f;Luk/co/chrisjenx/calligraphy/c;)V

    invoke-super {p0, v0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-super {p0, p1}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    goto :goto_0
.end method

.method public setFactory2(Landroid/view/LayoutInflater$Factory2;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 95
    instance-of v0, p1, Luk/co/chrisjenx/calligraphy/f$c;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Luk/co/chrisjenx/calligraphy/f$c;

    iget-object v1, p0, Luk/co/chrisjenx/calligraphy/f;->c:Luk/co/chrisjenx/calligraphy/c;

    invoke-direct {v0, p1, v1}, Luk/co/chrisjenx/calligraphy/f$c;-><init>(Landroid/view/LayoutInflater$Factory2;Luk/co/chrisjenx/calligraphy/c;)V

    invoke-super {p0, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-super {p0, p1}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0
.end method