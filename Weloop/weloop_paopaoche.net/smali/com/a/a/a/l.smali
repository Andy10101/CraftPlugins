.class Lcom/a/a/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/a/p;


# static fields
.field private static final c:[C

.field private static final d:[Z

.field private static final e:[C

.field private static final f:[C

.field private static final g:[C

.field private static final h:[C

.field private static final i:[C

.field private static final j:[C

.field private static final k:[C

.field private static final l:[C

.field private static final m:[C

.field private static final n:[C

.field private static final o:[C

.field private static final p:[C

.field private static final q:[C

.field private static final r:[C

.field private static final s:[C

.field private static final t:[C

.field private static final u:[C

.field private static final v:[C

.field private static final w:[C


# instance fields
.field private final A:Ljava/util/Hashtable;

.field private final B:Ljava/util/Hashtable;

.field private final C:Lcom/a/a/a/o;

.field private final D:Ljava/lang/String;

.field private E:I

.field private F:Z

.field private final G:I

.field private final H:[C

.field private I:I

.field private J:I

.field private K:Z

.field private final L:[C

.field private M:I

.field private final N:Lcom/a/a/a/b;

.field private final O:Lcom/a/a/a/n;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private final z:Ljava/io/Reader;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0x80

    const/4 v3, 0x4

    new-array v0, v3, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/a/a/a/l;->c:[C

    new-array v0, v4, [Z

    sput-object v0, Lcom/a/a/a/l;->d:[Z

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v4, :cond_0

    const-string v0, "<!--"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/a/a/a/l;->e:[C

    const-string v0, "-->"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/a/a/a/l;->f:[C

    const-string v0, "<?"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/a/a/a/l;->g:[C

    const-string v0, "?>"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/a/a/a/l;->h:[C

    const-string v0, "<!DOCTYPE"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/a/a/a/l;->i:[C

    const-string v0, "<?xml"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/a/a/a/l;->j:[C

    const-string v0, "encoding"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/a/a/a/l;->k:[C

    const-string v0, "version"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/a/a/a/l;->l:[C

    new-array v0, v3, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/a/a/a/l;->m:[C

    const-string v0, "<!"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/a/a/a/l;->n:[C

    const-string v0, "&#"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/a/a/a/l;->o:[C

    const-string v0, "<!ENTITY"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/a/a/a/l;->p:[C

    const-string v0, "NDATA"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/a/a/a/l;->q:[C

    const-string v0, "SYSTEM"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/a/a/a/l;->r:[C

    const-string v0, "PUBLIC"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/a/a/a/l;->s:[C

    const-string v0, "<![CDATA["

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/a/a/a/l;->t:[C

    const-string v0, "]]>"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/a/a/a/l;->u:[C

    const-string v0, "/>"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/a/a/a/l;->v:[C

    const-string v0, "</"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/a/a/a/l;->w:[C

    return-void

    :cond_0
    sget-object v1, Lcom/a/a/a/l;->d:[Z

    invoke-static {v0}, Lcom/a/a/a/l;->d(C)Z

    move-result v2

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto/16 :goto_0

    :array_0
    .array-data 2
        0x2es
        0x2ds
        0x5fs
        0x3as
    .end array-data

    :array_1
    .array-data 2
        0x5fs
        0x2es
        0x3as
        0x2ds
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/Reader;Lcom/a/a/a/o;Ljava/lang/String;Lcom/a/a/a/n;)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/a/a/a/l;-><init>(Ljava/lang/String;Ljava/io/Reader;[CLcom/a/a/a/o;Ljava/lang/String;Lcom/a/a/a/n;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/Reader;[CLcom/a/a/a/o;Ljava/lang/String;Lcom/a/a/a/n;)V
    .locals 7

    const/16 v6, 0x400

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/a/a/a/l;->y:Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/l;->A:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/a/a/a/l;->B:Ljava/util/Hashtable;

    const/4 v0, -0x2

    iput v0, p0, Lcom/a/a/a/l;->E:I

    iput-boolean v4, p0, Lcom/a/a/a/l;->F:Z

    iput v6, p0, Lcom/a/a/a/l;->G:I

    iput v4, p0, Lcom/a/a/a/l;->I:I

    iput v4, p0, Lcom/a/a/a/l;->J:I

    iput-boolean v4, p0, Lcom/a/a/a/l;->K:Z

    const/16 v0, 0xff

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/a/a/a/l;->L:[C

    const/4 v0, -0x1

    iput v0, p0, Lcom/a/a/a/l;->M:I

    iput v5, p0, Lcom/a/a/a/l;->M:I

    iput-object v1, p0, Lcom/a/a/a/l;->N:Lcom/a/a/a/b;

    if-nez p4, :cond_0

    sget-object p4, Lcom/a/a/a/p;->a:Lcom/a/a/a/o;

    :cond_0
    iput-object p4, p0, Lcom/a/a/a/l;->C:Lcom/a/a/a/o;

    if-nez p5, :cond_3

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/a/a/a/l;->D:Ljava/lang/String;

    iget-object v0, p0, Lcom/a/a/a/l;->A:Ljava/util/Hashtable;

    const-string v2, "lt"

    const-string v3, "<"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/a/a/a/l;->A:Ljava/util/Hashtable;

    const-string v2, "gt"

    const-string v3, ">"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/a/a/a/l;->A:Ljava/util/Hashtable;

    const-string v2, "amp"

    const-string v3, "&"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/a/a/a/l;->A:Ljava/util/Hashtable;

    const-string v2, "apos"

    const-string v3, "\'"

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/a/a/a/l;->A:Ljava/util/Hashtable;

    const-string v2, "quot"

    const-string v3, "\""

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_4

    iput-object p3, p0, Lcom/a/a/a/l;->H:[C

    iput v4, p0, Lcom/a/a/a/l;->I:I

    iget-object v0, p0, Lcom/a/a/a/l;->H:[C

    array-length v0, v0

    iput v0, p0, Lcom/a/a/a/l;->J:I

    iput-boolean v5, p0, Lcom/a/a/a/l;->K:Z

    iput-object v1, p0, Lcom/a/a/a/l;->z:Ljava/io/Reader;

    :goto_1
    iput-object p1, p0, Lcom/a/a/a/l;->x:Ljava/lang/String;

    iput-object p6, p0, Lcom/a/a/a/l;->O:Lcom/a/a/a/n;

    iget-object v0, p0, Lcom/a/a/a/l;->O:Lcom/a/a/a/n;

    invoke-interface {v0, p0}, Lcom/a/a/a/n;->a(Lcom/a/a/a/p;)V

    invoke-direct {p0}, Lcom/a/a/a/l;->x()V

    iget-object v0, p0, Lcom/a/a/a/l;->O:Lcom/a/a/a/n;

    invoke-interface {v0}, Lcom/a/a/a/n;->b()V

    invoke-direct {p0}, Lcom/a/a/a/l;->Z()Lcom/a/a/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/l;->y:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/a/a/a/l;->y:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/a/a/a/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/a/a/a/l;->C:Lcom/a/a/a/o;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "DOCTYPE name \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/a/a/a/l;->y:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\" not same as tag name, \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/a/a/a/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\" of root element"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/a/a/a/l;->x:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/a/a/a/l;->b()I

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Lcom/a/a/a/o;->b(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/a/a/a/l;->r()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/a/a/a/l;->z:Ljava/io/Reader;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/a/a/a/l;->z:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    :cond_2
    iget-object v0, p0, Lcom/a/a/a/l;->O:Lcom/a/a/a/n;

    invoke-interface {v0}, Lcom/a/a/a/n;->c()V

    return-void

    :cond_3
    invoke-virtual {p5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    iput-object p2, p0, Lcom/a/a/a/l;->z:Ljava/io/Reader;

    new-array v0, v6, [C

    iput-object v0, p0, Lcom/a/a/a/l;->H:[C

    invoke-direct {p0}, Lcom/a/a/a/l;->f()I

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/a/a/a/l;->s()V

    goto :goto_2
.end method

.method private A()Z
    .locals 1

    sget-object v0, Lcom/a/a/a/l;->j:[C

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->b([C)Z

    move-result v0

    return v0
.end method

.method private B()Z
    .locals 1

    sget-object v0, Lcom/a/a/a/l;->k:[C

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->b([C)Z

    move-result v0

    return v0
.end method

.method private C()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/a/a/a/l;->k:[C

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->a([C)V

    invoke-direct {p0}, Lcom/a/a/a/l;->E()V

    const/16 v0, 0x27

    const/16 v1, 0x22

    invoke-direct {p0, v0, v1}, Lcom/a/a/a/l;->a(CC)C

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-direct {p0, v0}, Lcom/a/a/a/l;->b(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->a(C)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/a/a/a/l;->g()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private D()V
    .locals 2

    invoke-direct {p0}, Lcom/a/a/a/l;->i()V

    sget-object v0, Lcom/a/a/a/l;->l:[C

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->a([C)V

    invoke-direct {p0}, Lcom/a/a/a/l;->E()V

    const/16 v0, 0x27

    const/16 v1, 0x22

    invoke-direct {p0, v0, v1}, Lcom/a/a/a/l;->a(CC)C

    move-result v0

    invoke-direct {p0}, Lcom/a/a/a/l;->G()V

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->a(C)V

    return-void
.end method

.method private final E()V
    .locals 1

    invoke-direct {p0}, Lcom/a/a/a/l;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/a/a/a/l;->i()V

    :cond_0
    const/16 v0, 0x3d

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->a(C)V

    invoke-direct {p0}, Lcom/a/a/a/l;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/a/a/a/l;->i()V

    :cond_1
    return-void
.end method

.method private F()Z
    .locals 3

    const/16 v2, 0x5a

    invoke-direct {p0}, Lcom/a/a/a/l;->h()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x61

    if-gt v1, v0, :cond_0

    const/16 v1, 0x7a

    if-le v0, v1, :cond_2

    :cond_0
    if-gt v2, v0, :cond_1

    if-le v0, v2, :cond_2

    :cond_1
    sget-object v1, Lcom/a/a/a/l;->m:[C

    invoke-static {v0, v1}, Lcom/a/a/a/l;->a(C[C)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private G()V
    .locals 1

    invoke-direct {p0}, Lcom/a/a/a/l;->g()C

    :goto_0
    invoke-direct {p0}, Lcom/a/a/a/l;->F()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/a/a/a/l;->g()C

    goto :goto_0
.end method

.method private H()V
    .locals 4

    const/16 v3, 0x5d

    const/16 v2, 0x5b

    const/16 v1, 0x3e

    sget-object v0, Lcom/a/a/a/l;->i:[C

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->a([C)V

    invoke-direct {p0}, Lcom/a/a/a/l;->i()V

    invoke-direct {p0}, Lcom/a/a/a/l;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/l;->y:Ljava/lang/String;

    invoke-direct {p0}, Lcom/a/a/a/l;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/a/a/a/l;->i()V

    invoke-direct {p0, v1}, Lcom/a/a/a/l;->b(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v2}, Lcom/a/a/a/l;->b(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/a/l;->F:Z

    invoke-direct {p0}, Lcom/a/a/a/l;->T()Ljava/lang/String;

    invoke-direct {p0}, Lcom/a/a/a/l;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/a/a/a/l;->i()V

    :cond_0
    invoke-direct {p0, v2}, Lcom/a/a/a/l;->b(C)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/a/a/a/l;->g()C

    :goto_0
    invoke-direct {p0, v3}, Lcom/a/a/a/l;->b(C)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v3}, Lcom/a/a/a/l;->a(C)V

    invoke-direct {p0}, Lcom/a/a/a/l;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/a/a/a/l;->i()V

    :cond_1
    invoke-direct {p0, v1}, Lcom/a/a/a/l;->a(C)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/a/a/a/l;->J()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/a/a/a/l;->I()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/a/a/a/l;->K()V

    goto :goto_0
.end method

.method private I()V
    .locals 1

    invoke-direct {p0}, Lcom/a/a/a/l;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/a/a/a/l;->P()Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/a/a/a/l;->i()V

    goto :goto_0
.end method

.method private J()Z
    .locals 1

    invoke-direct {p0}, Lcom/a/a/a/l;->Q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/a/a/a/l;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private K()V
    .locals 3

    const/16 v2, 0x3e

    invoke-direct {p0}, Lcom/a/a/a/l;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/a/a/a/l;->v()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/a/a/a/l;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/a/a/a/l;->t()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/a/a/a/l;->S()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/a/a/a/l;->R()V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/a/a/a/l;->n:[C

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->b([C)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_1
    invoke-direct {p0, v2}, Lcom/a/a/a/l;->b(C)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v2}, Lcom/a/a/a/l;->a(C)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x27

    const/16 v1, 0x22

    invoke-direct {p0, v0, v1}, Lcom/a/a/a/l;->b(CC)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/a/a/a/l;->g()C

    move-result v0

    :goto_2
    invoke-direct {p0, v0}, Lcom/a/a/a/l;->b(C)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->a(C)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/a/a/a/l;->g()C

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/a/a/a/l;->g()C

    goto :goto_1

    :cond_6
    new-instance v0, Lcom/a/a/a/m;

    const-string v1, "expecting processing instruction, comment, or \"<!\""

    invoke-direct {v0, p0, v1}, Lcom/a/a/a/m;-><init>(Lcom/a/a/a/l;Ljava/lang/String;)V

    throw v0
.end method

.method private L()C
    .locals 9

    const/16 v8, 0x3b

    const/16 v5, 0x20

    const/16 v1, 0x10

    const/4 v3, 0x0

    sget-object v0, Lcom/a/a/a/l;->o:[C

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->a([C)V

    const/16 v0, 0xa

    const/16 v2, 0x78

    invoke-direct {p0, v2}, Lcom/a/a/a/l;->b(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/a/a/a/l;->g()C

    move v0, v1

    :cond_0
    move v2, v3

    :goto_0
    invoke-direct {p0, v8}, Lcom/a/a/a/l;->b(C)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v8}, Lcom/a/a/a/l;->a(C)V

    new-instance v4, Ljava/lang/String;

    iget-object v6, p0, Lcom/a/a/a/l;->L:[C

    invoke-direct {v4, v6, v3, v2}, Ljava/lang/String;-><init>([CII)V

    :try_start_0
    invoke-static {v4, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-char v0, v0

    :goto_1
    return v0

    :cond_1
    iget-object v6, p0, Lcom/a/a/a/l;->L:[C

    add-int/lit8 v4, v2, 0x1

    invoke-direct {p0}, Lcom/a/a/a/l;->g()C

    move-result v7

    aput-char v7, v6, v2

    const/16 v2, 0xff

    if-lt v4, v2, :cond_3

    iget-object v0, p0, Lcom/a/a/a/l;->C:Lcom/a/a/a/o;

    const-string v1, "Tmp buffer overflow on readCharRef"

    iget-object v2, p0, Lcom/a/a/a/l;->x:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/a/a/a/l;->b()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/a/a/a/o;->b(Ljava/lang/String;Ljava/lang/String;I)V

    move v0, v5

    goto :goto_1

    :catch_0
    move-exception v2

    iget-object v2, p0, Lcom/a/a/a/l;->C:Lcom/a/a/a/o;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "\""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\" is not a valid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    if-ne v0, v1, :cond_2

    const-string v0, "hexadecimal"

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " number"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/l;->x:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/a/a/a/l;->b()I

    move-result v3

    invoke-interface {v2, v0, v1, v3}, Lcom/a/a/a/o;->b(Ljava/lang/String;Ljava/lang/String;I)V

    move v0, v5

    goto :goto_1

    :cond_2
    const-string v0, "decimal"

    goto :goto_2

    :cond_3
    move v2, v4

    goto :goto_0
.end method

.method private final M()[C
    .locals 3

    sget-object v0, Lcom/a/a/a/l;->o:[C

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->b([C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/a/a/a/l;->L()C

    move-result v2

    aput-char v2, v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/a/a/a/l;->O()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_0
.end method

.method private final N()Z
    .locals 1

    const/16 v0, 0x26

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->b(C)Z

    move-result v0

    return v0
.end method

.method private O()Ljava/lang/String;
    .locals 5

    const/16 v0, 0x26

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->a(C)V

    invoke-direct {p0}, Lcom/a/a/a/l;->l()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/a/a/a/l;->A:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iget-boolean v2, p0, Lcom/a/a/a/l;->F:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/a/a/a/l;->C:Lcom/a/a/a/o;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "; not found -- possibly defined in external DTD)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/a/a/a/l;->x:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/a/a/a/l;->b()I

    move-result v4

    invoke-interface {v2, v1, v3, v4}, Lcom/a/a/a/o;->b(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    :goto_0
    const/16 v1, 0x3b

    invoke-direct {p0, v1}, Lcom/a/a/a/l;->a(C)V

    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/a/a/a/l;->C:Lcom/a/a/a/o;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "No declaration of &"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/a/a/a/l;->x:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/a/a/a/l;->b()I

    move-result v4

    invoke-interface {v2, v1, v3, v4}, Lcom/a/a/a/o;->b(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private P()Ljava/lang/String;
    .locals 5

    const/16 v0, 0x25

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->a(C)V

    invoke-direct {p0}, Lcom/a/a/a/l;->l()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/a/a/a/l;->B:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iget-object v2, p0, Lcom/a/a/a/l;->C:Lcom/a/a/a/o;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "No declaration of %"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/a/a/a/l;->x:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/a/a/a/l;->b()I

    move-result v4

    invoke-interface {v2, v1, v3, v4}, Lcom/a/a/a/o;->b(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    const/16 v1, 0x3b

    invoke-direct {p0, v1}, Lcom/a/a/a/l;->a(C)V

    return-object v0
.end method

.method private Q()Z
    .locals 1

    const/16 v0, 0x25

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->b(C)Z

    move-result v0

    return v0
.end method

.method private R()V
    .locals 3

    const/16 v1, 0x25

    sget-object v0, Lcom/a/a/a/l;->p:[C

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->a([C)V

    invoke-direct {p0}, Lcom/a/a/a/l;->i()V

    invoke-direct {p0, v1}, Lcom/a/a/a/l;->b(C)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/a/a/a/l;->a(C)V

    invoke-direct {p0}, Lcom/a/a/a/l;->i()V

    invoke-direct {p0}, Lcom/a/a/a/l;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/a/a/a/l;->i()V

    invoke-direct {p0}, Lcom/a/a/a/l;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/a/a/a/l;->n()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/a/a/a/l;->B:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-direct {p0}, Lcom/a/a/a/l;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/a/a/a/l;->i()V

    :cond_0
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->a(C)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/a/a/a/l;->T()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/a/a/a/l;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/a/a/a/l;->i()V

    invoke-direct {p0}, Lcom/a/a/a/l;->o()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/a/a/a/l;->n()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/a/a/a/l;->A:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/a/a/a/l;->U()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/a/a/a/l;->T()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/a/a/a/l;->j()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/a/a/a/l;->i()V

    :cond_5
    sget-object v2, Lcom/a/a/a/l;->q:[C

    invoke-direct {p0, v2}, Lcom/a/a/a/l;->b([C)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/a/a/a/l;->q:[C

    invoke-direct {p0, v2}, Lcom/a/a/a/l;->a([C)V

    invoke-direct {p0}, Lcom/a/a/a/l;->i()V

    invoke-direct {p0}, Lcom/a/a/a/l;->l()Ljava/lang/String;

    goto :goto_2

    :cond_6
    new-instance v0, Lcom/a/a/a/m;

    const-string v1, "expecting double-quote, \"PUBLIC\" or \"SYSTEM\" while reading entity declaration"

    invoke-direct {v0, p0, v1}, Lcom/a/a/a/m;-><init>(Lcom/a/a/a/l;Ljava/lang/String;)V

    throw v0
.end method

.method private S()Z
    .locals 1

    sget-object v0, Lcom/a/a/a/l;->p:[C

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->b([C)Z

    move-result v0

    return v0
.end method

.method private T()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/a/a/a/l;->r:[C

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->b([C)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/a/a/a/l;->r:[C

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->a([C)V

    :goto_0
    invoke-direct {p0}, Lcom/a/a/a/l;->i()V

    invoke-direct {p0}, Lcom/a/a/a/l;->p()V

    const-string v0, "(WARNING: external ID not read)"

    return-object v0

    :cond_0
    sget-object v0, Lcom/a/a/a/l;->s:[C

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->b([C)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/a/a/a/l;->s:[C

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->a([C)V

    invoke-direct {p0}, Lcom/a/a/a/l;->i()V

    invoke-direct {p0}, Lcom/a/a/a/l;->q()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/a/a/a/m;

    const-string v1, "expecting \"SYSTEM\" or \"PUBLIC\" while reading external ID"

    invoke-direct {v0, p0, v1}, Lcom/a/a/a/m;-><init>(Lcom/a/a/a/l;Ljava/lang/String;)V

    throw v0
.end method

.method private U()Z
    .locals 1

    sget-object v0, Lcom/a/a/a/l;->r:[C

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->b([C)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/a/a/a/l;->s:[C

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->b([C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private V()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x27

    const/16 v1, 0x22

    invoke-direct {p0, v0, v1}, Lcom/a/a/a/l;->a(CC)C

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-direct {p0, v0}, Lcom/a/a/a/l;->b(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->a(C)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/a/a/a/l;->N()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/a/a/a/l;->M()[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/a/a/a/l;->g()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private W()V
    .locals 5

    const/16 v4, 0xff

    const/4 v1, 0x0

    move v0, v1

    :cond_0
    :goto_0
    const/16 v2, 0x3c

    invoke-direct {p0, v2}, Lcom/a/a/a/l;->b(C)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x26

    invoke-direct {p0, v2}, Lcom/a/a/a/l;->b(C)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/a/a/a/l;->u:[C

    invoke-direct {p0, v2}, Lcom/a/a/a/l;->b([C)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    if-lez v0, :cond_2

    iget-object v2, p0, Lcom/a/a/a/l;->O:Lcom/a/a/a/n;

    iget-object v3, p0, Lcom/a/a/a/l;->L:[C

    invoke-interface {v2, v3, v1, v0}, Lcom/a/a/a/n;->a([CII)V

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/a/a/a/l;->L:[C

    invoke-direct {p0}, Lcom/a/a/a/l;->g()C

    move-result v3

    aput-char v3, v2, v0

    iget-object v2, p0, Lcom/a/a/a/l;->L:[C

    aget-char v2, v2, v0

    const/16 v3, 0xd

    if-ne v2, v3, :cond_4

    invoke-direct {p0}, Lcom/a/a/a/l;->h()C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/a/a/a/l;->L:[C

    invoke-direct {p0}, Lcom/a/a/a/l;->g()C

    move-result v3

    aput-char v3, v2, v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/a/a/a/l;->O:Lcom/a/a/a/n;

    iget-object v2, p0, Lcom/a/a/a/l;->L:[C

    invoke-interface {v0, v2, v1, v4}, Lcom/a/a/a/n;->a([CII)V

    move v0, v1

    goto :goto_0
.end method

.method private X()V
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x0

    sget-object v2, Lcom/a/a/a/l;->t:[C

    invoke-direct {p0, v2}, Lcom/a/a/a/l;->a([C)V

    move v2, v1

    :goto_0
    sget-object v3, Lcom/a/a/a/l;->u:[C

    invoke-direct {p0, v3}, Lcom/a/a/a/l;->b([C)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/a/a/a/l;->u:[C

    invoke-direct {p0, v3}, Lcom/a/a/a/l;->a([C)V

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/a/a/a/l;->L:[C

    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iget-object v2, p0, Lcom/a/a/a/l;->O:Lcom/a/a/a/n;

    array-length v3, v0

    invoke-interface {v2, v0, v1, v3}, Lcom/a/a/a/n;->a([CII)V

    :goto_1
    return-void

    :cond_0
    const/16 v3, 0xff

    if-lt v2, v3, :cond_3

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v3, p0, Lcom/a/a/a/l;->L:[C

    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :goto_2
    move-object v2, v0

    move v0, v1

    :goto_3
    iget-object v4, p0, Lcom/a/a/a/l;->L:[C

    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0}, Lcom/a/a/a/l;->g()C

    move-result v5

    aput-char v5, v4, v0

    move-object v0, v2

    move v2, v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/a/a/a/l;->L:[C

    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/a/a/a/l;->O:Lcom/a/a/a/n;

    iget-object v3, p0, Lcom/a/a/a/l;->L:[C

    invoke-interface {v0, v3, v1, v2}, Lcom/a/a/a/n;->a([CII)V

    goto :goto_1

    :cond_3
    move v6, v2

    move-object v2, v0

    move v0, v6

    goto :goto_3
.end method

.method private Y()Z
    .locals 1

    sget-object v0, Lcom/a/a/a/l;->t:[C

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->b([C)Z

    move-result v0

    return v0
.end method

.method private final Z()Lcom/a/a/a/f;
    .locals 3

    new-instance v0, Lcom/a/a/a/f;

    invoke-direct {v0}, Lcom/a/a/a/f;-><init>()V

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->a(Lcom/a/a/a/f;)Z

    move-result v1

    iget-object v2, p0, Lcom/a/a/a/l;->O:Lcom/a/a/a/n;

    invoke-interface {v2, v0}, Lcom/a/a/a/n;->a(Lcom/a/a/a/f;)V

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/a/a/a/l;->ab()V

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->c(Lcom/a/a/a/f;)V

    :cond_0
    iget-object v1, p0, Lcom/a/a/a/l;->O:Lcom/a/a/a/n;

    invoke-interface {v1, v0}, Lcom/a/a/a/n;->b(Lcom/a/a/a/f;)V

    return-object v0
.end method

.method private final a(CC)C
    .locals 4

    invoke-direct {p0}, Lcom/a/a/a/l;->g()C

    move-result v0

    if-eq v0, p1, :cond_0

    if-eq v0, p2, :cond_0

    new-instance v1, Lcom/a/a/a/m;

    const/4 v2, 0x2

    new-array v2, v2, [C

    const/4 v3, 0x0

    aput-char p1, v2, v3

    const/4 v3, 0x1

    aput-char p2, v2, v3

    invoke-direct {v1, p0, v0, v2}, Lcom/a/a/a/m;-><init>(Lcom/a/a/a/l;C[C)V

    throw v1

    :cond_0
    return v0
.end method

.method private final a(CCCC)C
    .locals 4

    invoke-direct {p0}, Lcom/a/a/a/l;->g()C

    move-result v0

    if-eq v0, p1, :cond_0

    if-eq v0, p2, :cond_0

    if-eq v0, p3, :cond_0

    if-eq v0, p4, :cond_0

    new-instance v1, Lcom/a/a/a/m;

    const/4 v2, 0x4

    new-array v2, v2, [C

    const/4 v3, 0x0

    aput-char p1, v2, v3

    const/4 v3, 0x1

    aput-char p2, v2, v3

    const/4 v3, 0x2

    aput-char p3, v2, v3

    const/4 v3, 0x3

    aput-char p4, v2, v3

    invoke-direct {v1, p0, v0, v2}, Lcom/a/a/a/m;-><init>(Lcom/a/a/a/l;C[C)V

    throw v1

    :cond_0
    return v0
.end method

.method private a(I)I
    .locals 6

    const/4 v1, 0x0

    const/4 v2, -0x1

    iget-boolean v0, p0, Lcom/a/a/a/l;->K:Z

    if-eqz v0, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/a/a/a/l;->H:[C

    array-length v0, v0

    iget v3, p0, Lcom/a/a/a/l;->I:I

    sub-int/2addr v0, v3

    if-ge v0, p1, :cond_2

    move v0, v1

    :goto_1
    iget v3, p0, Lcom/a/a/a/l;->I:I

    add-int/2addr v3, v0

    iget v4, p0, Lcom/a/a/a/l;->J:I

    if-lt v3, v4, :cond_3

    iget v0, p0, Lcom/a/a/a/l;->J:I

    iget v3, p0, Lcom/a/a/a/l;->I:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/a/a/a/l;->J:I

    iput v1, p0, Lcom/a/a/a/l;->I:I

    move v1, v0

    :cond_2
    invoke-direct {p0}, Lcom/a/a/a/l;->f()I

    move-result v0

    if-ne v0, v2, :cond_4

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/a/a/a/l;->H:[C

    iget-object v4, p0, Lcom/a/a/a/l;->H:[C

    iget v5, p0, Lcom/a/a/a/l;->I:I

    add-int/2addr v5, v0

    aget-char v4, v4, v5

    aput-char v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    add-int/2addr v1, v0

    goto :goto_0
.end method

.method private final a(C)V
    .locals 2

    invoke-direct {p0}, Lcom/a/a/a/l;->g()C

    move-result v0

    if-eq v0, p1, :cond_0

    new-instance v1, Lcom/a/a/a/m;

    invoke-direct {v1, p0, v0, p1}, Lcom/a/a/a/m;-><init>(Lcom/a/a/a/l;CC)V

    throw v1

    :cond_0
    return-void
.end method

.method private final a([C)V
    .locals 5

    array-length v1, p1

    iget v0, p0, Lcom/a/a/a/l;->J:I

    iget v2, p0, Lcom/a/a/a/l;->I:I

    sub-int/2addr v0, v2

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/a/a/a/l;->a(I)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/a/a/a/l;->E:I

    new-instance v0, Lcom/a/a/a/m;

    const-string v1, "end of XML file"

    invoke-direct {v0, p0, v1, p1}, Lcom/a/a/a/m;-><init>(Lcom/a/a/a/l;Ljava/lang/String;[C)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/l;->H:[C

    iget v2, p0, Lcom/a/a/a/l;->J:I

    add-int/lit8 v2, v2, -0x1

    aget-char v0, v0, v2

    iput v0, p0, Lcom/a/a/a/l;->E:I

    iget v0, p0, Lcom/a/a/a/l;->J:I

    iget v2, p0, Lcom/a/a/a/l;->I:I

    sub-int/2addr v0, v2

    if-ge v0, v1, :cond_1

    new-instance v0, Lcom/a/a/a/m;

    const-string v1, "end of XML file"

    invoke-direct {v0, p0, v1, p1}, Lcom/a/a/a/m;-><init>(Lcom/a/a/a/l;Ljava/lang/String;[C)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_2

    iget v0, p0, Lcom/a/a/a/l;->I:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/a/a/a/l;->I:I

    return-void

    :cond_2
    iget-object v2, p0, Lcom/a/a/a/l;->H:[C

    iget v3, p0, Lcom/a/a/a/l;->I:I

    add-int/2addr v3, v0

    aget-char v2, v2, v3

    aget-char v3, p1, v0

    if-eq v2, v3, :cond_3

    new-instance v0, Lcom/a/a/a/m;

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/a/a/a/l;->H:[C

    iget v4, p0, Lcom/a/a/a/l;->I:I

    invoke-direct {v2, v3, v4, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v0, p0, v2, p1}, Lcom/a/a/a/m;-><init>(Lcom/a/a/a/l;Ljava/lang/String;[C)V

    throw v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static final a(C[C)Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    :goto_1
    return v1

    :cond_0
    aget-char v2, p1, v0

    if-ne p0, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Lcom/a/a/a/f;)Z
    .locals 2

    const/16 v1, 0x3e

    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->a(C)V

    invoke-direct {p0}, Lcom/a/a/a/l;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/a/a/a/f;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/a/a/a/l;->j()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/a/a/a/l;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/a/a/a/l;->i()V

    :cond_1
    invoke-direct {p0, v1}, Lcom/a/a/a/l;->b(C)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v1}, Lcom/a/a/a/l;->a(C)V

    :goto_1
    return v0

    :cond_2
    invoke-direct {p0}, Lcom/a/a/a/l;->i()V

    const/16 v0, 0x2f

    invoke-direct {p0, v0, v1}, Lcom/a/a/a/l;->b(CC)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/a/a/a/l;->b(Lcom/a/a/a/f;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/a/a/a/l;->v:[C

    invoke-direct {p0, v1}, Lcom/a/a/a/l;->a([C)V

    goto :goto_1
.end method

.method private aa()Z
    .locals 1

    sget-object v0, Lcom/a/a/a/l;->w:[C

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->b([C)Z

    move-result v0

    return v0
.end method

.method private ab()V
    .locals 5

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/a/a/a/l;->W()V

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/a/a/a/l;->aa()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :goto_1
    invoke-direct {p0}, Lcom/a/a/a/l;->W()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/a/a/a/l;->N()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/a/a/a/l;->M()[C

    move-result-object v2

    iget-object v3, p0, Lcom/a/a/a/l;->O:Lcom/a/a/a/n;

    array-length v4, v2

    invoke-interface {v3, v2, v1, v4}, Lcom/a/a/a/n;->a([CII)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/a/a/a/l;->Y()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/a/a/a/l;->X()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/a/a/a/l;->w()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/a/a/a/l;->v()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/a/a/a/l;->u()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/a/a/a/l;->t()V

    goto :goto_1

    :cond_5
    const/16 v2, 0x3c

    invoke-direct {p0, v2}, Lcom/a/a/a/l;->b(C)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/a/a/a/l;->Z()Lcom/a/a/a/f;

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method private b(Lcom/a/a/a/f;)V
    .locals 6

    invoke-direct {p0}, Lcom/a/a/a/l;->l()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/a/a/a/l;->E()V

    invoke-direct {p0}, Lcom/a/a/a/l;->V()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/a/a/a/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/a/a/a/l;->C:Lcom/a/a/a/o;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Element "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " contains attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "more than once"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/a/a/a/l;->x:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/a/a/a/l;->b()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lcom/a/a/a/o;->b(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final b(C)Z
    .locals 2

    iget v0, p0, Lcom/a/a/a/l;->I:I

    iget v1, p0, Lcom/a/a/a/l;->J:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/a/a/a/l;->f()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/a/a/a/m;

    const-string v1, "unexpected end of expression."

    invoke-direct {v0, p0, v1}, Lcom/a/a/a/m;-><init>(Lcom/a/a/a/l;Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/l;->H:[C

    iget v1, p0, Lcom/a/a/a/l;->I:I

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final b(CC)Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/a/a/a/l;->I:I

    iget v2, p0, Lcom/a/a/a/l;->J:I

    if-lt v1, v2, :cond_1

    invoke-direct {p0}, Lcom/a/a/a/l;->f()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/a/a/a/l;->H:[C

    iget v2, p0, Lcom/a/a/a/l;->I:I

    aget-char v1, v1, v2

    if-eq v1, p1, :cond_2

    if-ne v1, p2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final b(CCCC)Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/a/a/a/l;->I:I

    iget v2, p0, Lcom/a/a/a/l;->J:I

    if-lt v1, v2, :cond_1

    invoke-direct {p0}, Lcom/a/a/a/l;->f()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/a/a/a/l;->H:[C

    iget v2, p0, Lcom/a/a/a/l;->I:I

    aget-char v1, v1, v2

    if-eq v1, p1, :cond_2

    if-eq v1, p2, :cond_2

    if-eq v1, p3, :cond_2

    if-ne v1, p4, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final b([C)Z
    .locals 5

    const/4 v0, 0x0

    array-length v2, p1

    iget v1, p0, Lcom/a/a/a/l;->J:I

    iget v3, p0, Lcom/a/a/a/l;->I:I

    sub-int/2addr v1, v3

    if-ge v1, v2, :cond_1

    invoke-direct {p0, v2}, Lcom/a/a/a/l;->a(I)I

    move-result v1

    if-gtz v1, :cond_1

    const/4 v1, -0x1

    iput v1, p0, Lcom/a/a/a/l;->E:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/a/a/a/l;->H:[C

    iget v3, p0, Lcom/a/a/a/l;->J:I

    add-int/lit8 v3, v3, -0x1

    aget-char v1, v1, v3

    iput v1, p0, Lcom/a/a/a/l;->E:I

    iget v1, p0, Lcom/a/a/a/l;->J:I

    iget v3, p0, Lcom/a/a/a/l;->I:I

    sub-int/2addr v1, v3

    if-lt v1, v2, :cond_0

    move v1, v0

    :goto_1
    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/a/a/a/l;->H:[C

    iget v4, p0, Lcom/a/a/a/l;->I:I

    add-int/2addr v4, v1

    aget-char v3, v3, v4

    aget-char v4, p1, v1

    if-ne v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private c(Lcom/a/a/a/f;)V
    .locals 4

    sget-object v0, Lcom/a/a/a/l;->w:[C

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->a([C)V

    invoke-direct {p0}, Lcom/a/a/a/l;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/a/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/a/a/a/l;->C:Lcom/a/a/a/o;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "end tag ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ") does not match begin tag ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/a/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/a/a/a/l;->x:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/a/a/a/l;->b()I

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Lcom/a/a/a/o;->b(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    invoke-direct {p0}, Lcom/a/a/a/l;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/a/a/a/l;->i()V

    :cond_1
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->a(C)V

    return-void
.end method

.method private static c(C)Z
    .locals 2

    const-string v0, "abcdefghijklmnopqrstuvwxyz"

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(C)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/a/a/a/l;->c(C)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/a/a/a/l;->c:[C

    invoke-static {p0, v0}, Lcom/a/a/a/l;->a(C[C)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/a/a/a/l;->e(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(C)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xb7 -> :sswitch_0
        0x2d0 -> :sswitch_0
        0x2d1 -> :sswitch_0
        0x387 -> :sswitch_0
        0x640 -> :sswitch_0
        0xe46 -> :sswitch_0
        0xec6 -> :sswitch_0
        0x3005 -> :sswitch_0
        0x3031 -> :sswitch_0
        0x3032 -> :sswitch_0
        0x3033 -> :sswitch_0
        0x3034 -> :sswitch_0
        0x3035 -> :sswitch_0
        0x309d -> :sswitch_0
        0x309e -> :sswitch_0
        0x30fc -> :sswitch_0
        0x30fd -> :sswitch_0
        0x30fe -> :sswitch_0
    .end sparse-switch
.end method

.method private f()I
    .locals 6

    const/4 v0, -0x1

    iget-boolean v1, p0, Lcom/a/a/a/l;->K:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/a/a/a/l;->J:I

    iget-object v2, p0, Lcom/a/a/a/l;->H:[C

    array-length v2, v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lcom/a/a/a/l;->J:I

    iput v1, p0, Lcom/a/a/a/l;->I:I

    :cond_1
    iget-object v1, p0, Lcom/a/a/a/l;->z:Ljava/io/Reader;

    iget-object v2, p0, Lcom/a/a/a/l;->H:[C

    iget v3, p0, Lcom/a/a/a/l;->J:I

    iget-object v4, p0, Lcom/a/a/a/l;->H:[C

    array-length v4, v4

    iget v5, p0, Lcom/a/a/a/l;->J:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    if-gtz v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/a/a/a/l;->K:Z

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/a/a/a/l;->J:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/a/a/a/l;->J:I

    move v0, v1

    goto :goto_0
.end method

.method private final g()C
    .locals 3

    iget v0, p0, Lcom/a/a/a/l;->I:I

    iget v1, p0, Lcom/a/a/a/l;->J:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/a/a/a/l;->f()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/a/a/a/m;

    const-string v1, "unexpected end of expression."

    invoke-direct {v0, p0, v1}, Lcom/a/a/a/m;-><init>(Lcom/a/a/a/l;Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/l;->H:[C

    iget v1, p0, Lcom/a/a/a/l;->I:I

    aget-char v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/a/a/a/l;->M:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/a/l;->M:I

    :cond_1
    iget-object v0, p0, Lcom/a/a/a/l;->H:[C

    iget v1, p0, Lcom/a/a/a/l;->I:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/a/a/a/l;->I:I

    aget-char v0, v0, v1

    return v0
.end method

.method private final h()C
    .locals 2

    iget v0, p0, Lcom/a/a/a/l;->I:I

    iget v1, p0, Lcom/a/a/a/l;->J:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/a/a/a/l;->f()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/a/a/a/m;

    const-string v1, "unexpected end of expression."

    invoke-direct {v0, p0, v1}, Lcom/a/a/a/m;-><init>(Lcom/a/a/a/l;Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/l;->H:[C

    iget v1, p0, Lcom/a/a/a/l;->I:I

    aget-char v0, v0, v1

    return v0
.end method

.method private final i()V
    .locals 5

    const/16 v4, 0x20

    const/16 v3, 0xd

    const/16 v2, 0xa

    const/16 v1, 0x9

    invoke-direct {p0, v4, v1, v3, v2}, Lcom/a/a/a/l;->a(CCCC)C

    :goto_0
    invoke-direct {p0, v4, v1, v3, v2}, Lcom/a/a/a/l;->b(CCCC)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/a/a/a/l;->g()C

    goto :goto_0
.end method

.method private final j()Z
    .locals 4

    const/16 v0, 0x20

    const/16 v1, 0x9

    const/16 v2, 0xd

    const/16 v3, 0xa

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/a/a/a/l;->b(CCCC)Z

    move-result v0

    return v0
.end method

.method private k()Z
    .locals 2

    invoke-direct {p0}, Lcom/a/a/a/l;->h()C

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/a/a/a/l;->d:[Z

    aget-boolean v0, v1, v0

    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Lcom/a/a/a/l;->d(C)Z

    move-result v0

    goto :goto_0
.end method

.method private final l()Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/a/a/a/l;->L:[C

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/a/a/a/l;->m()C

    move-result v4

    aput-char v4, v3, v1

    :goto_0
    invoke-direct {p0}, Lcom/a/a/a/l;->k()Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/a/a/a/l;->L:[C

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0}, Lcom/a/a/a/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const/16 v3, 0xff

    if-lt v2, v3, :cond_3

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v3, p0, Lcom/a/a/a/l;->L:[C

    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :goto_2
    move-object v2, v0

    move v0, v1

    :goto_3
    iget-object v4, p0, Lcom/a/a/a/l;->L:[C

    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0}, Lcom/a/a/a/l;->g()C

    move-result v5

    aput-char v5, v4, v0

    move-object v0, v2

    move v2, v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/a/a/a/l;->L:[C

    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/a/a/a/l;->L:[C

    invoke-virtual {v0, v3, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    move v6, v2

    move-object v2, v0

    move v0, v6

    goto :goto_3
.end method

.method private m()C
    .locals 3

    invoke-direct {p0}, Lcom/a/a/a/l;->g()C

    move-result v0

    invoke-static {v0}, Lcom/a/a/a/l;->c(C)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_0

    new-instance v1, Lcom/a/a/a/m;

    const-string v2, "letter, underscore, colon"

    invoke-direct {v1, p0, v0, v2}, Lcom/a/a/a/m;-><init>(Lcom/a/a/a/l;CLjava/lang/String;)V

    throw v1

    :cond_0
    return v0
.end method

.method private final n()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x27

    const/16 v1, 0x22

    invoke-direct {p0, v0, v1}, Lcom/a/a/a/l;->a(CC)C

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-direct {p0, v0}, Lcom/a/a/a/l;->b(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->a(C)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/a/a/a/l;->Q()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/a/a/a/l;->P()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/a/a/a/l;->N()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/a/a/a/l;->M()[C

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/a/a/a/l;->g()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private final o()Z
    .locals 2

    const/16 v0, 0x27

    const/16 v1, 0x22

    invoke-direct {p0, v0, v1}, Lcom/a/a/a/l;->b(CC)Z

    move-result v0

    return v0
.end method

.method private final p()V
    .locals 2

    invoke-direct {p0}, Lcom/a/a/a/l;->g()C

    move-result v0

    :goto_0
    invoke-direct {p0}, Lcom/a/a/a/l;->h()C

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->a(C)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/a/a/a/l;->g()C

    goto :goto_0
.end method

.method private final q()V
    .locals 0

    invoke-direct {p0}, Lcom/a/a/a/l;->p()V

    return-void
.end method

.method private r()Z
    .locals 1

    invoke-direct {p0}, Lcom/a/a/a/l;->u()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/a/a/a/l;->w()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/a/a/a/l;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private s()V
    .locals 2

    invoke-direct {p0}, Lcom/a/a/a/l;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/a/a/a/l;->t()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/a/a/a/l;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/a/a/a/l;->v()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/a/a/a/l;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/a/a/a/l;->i()V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/a/a/a/m;

    const-string v1, "expecting comment or processing instruction or space"

    invoke-direct {v0, p0, v1}, Lcom/a/a/a/m;-><init>(Lcom/a/a/a/l;Ljava/lang/String;)V

    throw v0
.end method

.method private final t()V
    .locals 1

    sget-object v0, Lcom/a/a/a/l;->e:[C

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->a([C)V

    :goto_0
    sget-object v0, Lcom/a/a/a/l;->f:[C

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->b([C)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/a/a/a/l;->f:[C

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->a([C)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/a/a/a/l;->g()C

    goto :goto_0
.end method

.method private final u()Z
    .locals 1

    sget-object v0, Lcom/a/a/a/l;->e:[C

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->b([C)Z

    move-result v0

    return v0
.end method

.method private final v()V
    .locals 1

    sget-object v0, Lcom/a/a/a/l;->g:[C

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->a([C)V

    :goto_0
    sget-object v0, Lcom/a/a/a/l;->h:[C

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->b([C)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/a/a/a/l;->h:[C

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->a([C)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/a/a/a/l;->g()C

    goto :goto_0
.end method

.method private final w()Z
    .locals 1

    sget-object v0, Lcom/a/a/a/l;->g:[C

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->b([C)Z

    move-result v0

    return v0
.end method

.method private x()V
    .locals 1

    invoke-direct {p0}, Lcom/a/a/a/l;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/a/a/a/l;->z()V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/a/a/a/l;->r()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/a/a/a/l;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/a/a/a/l;->H()V

    :goto_1
    invoke-direct {p0}, Lcom/a/a/a/l;->r()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/a/a/a/l;->s()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/a/a/a/l;->s()V

    goto :goto_1
.end method

.method private y()Z
    .locals 1

    sget-object v0, Lcom/a/a/a/l;->i:[C

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->b([C)Z

    move-result v0

    return v0
.end method

.method private z()V
    .locals 4

    sget-object v0, Lcom/a/a/a/l;->j:[C

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->a([C)V

    invoke-direct {p0}, Lcom/a/a/a/l;->D()V

    invoke-direct {p0}, Lcom/a/a/a/l;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/a/a/a/l;->i()V

    :cond_0
    invoke-direct {p0}, Lcom/a/a/a/l;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/a/a/a/l;->C()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/l;->D:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/a/a/a/l;->D:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/a/a/a/h;

    iget-object v2, p0, Lcom/a/a/a/l;->x:Ljava/lang/String;

    iget-object v3, p0, Lcom/a/a/a/l;->D:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lcom/a/a/a/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-direct {p0}, Lcom/a/a/a/l;->g()C

    :cond_2
    sget-object v0, Lcom/a/a/a/l;->h:[C

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->b([C)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/a/a/a/l;->h:[C

    invoke-direct {p0, v0}, Lcom/a/a/a/l;->a([C)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/l;->x:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/a/a/a/l;->M:I

    return v0
.end method

.method c()I
    .locals 1

    iget v0, p0, Lcom/a/a/a/l;->E:I

    return v0
.end method

.method final d()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method e()Lcom/a/a/a/o;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/l;->C:Lcom/a/a/a/o;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/l;->x:Ljava/lang/String;

    return-object v0
.end method
