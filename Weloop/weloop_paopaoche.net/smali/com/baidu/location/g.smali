.class Lcom/baidu/location/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/location/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/location/g$a;,
        Lcom/baidu/location/g$b;
    }
.end annotation


# static fields
.field private static a:Lcom/baidu/location/g;


# instance fields
.field private Y:Ljava/lang/String;

.field private Z:Z

.field private aa:Z

.field private ab:Z

.field private ac:Ljava/lang/String;

.field private ad:I

.field private ae:D

.field private af:D

.field private ag:D

.field private ah:D

.field private ai:D

.field private aj:J

.field private ak:Z

.field private volatile al:Z

.field private final am:I

.field private final an:I

.field private final ao:Ljava/lang/String;

.field private final ap:Ljava/lang/String;

.field private final aq:Ljava/lang/String;

.field private ar:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/location/g;->a:Lcom/baidu/location/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/baidu/location/g;->Y:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/baidu/location/g;->Z:Z

    iput-boolean v2, p0, Lcom/baidu/location/g;->aa:Z

    iput-boolean v2, p0, Lcom/baidu/location/g;->ab:Z

    iput-object v3, p0, Lcom/baidu/location/g;->ac:Ljava/lang/String;

    iput v2, p0, Lcom/baidu/location/g;->ad:I

    iput-wide v0, p0, Lcom/baidu/location/g;->ae:D

    iput-wide v0, p0, Lcom/baidu/location/g;->af:D

    iput-wide v0, p0, Lcom/baidu/location/g;->ag:D

    iput-wide v0, p0, Lcom/baidu/location/g;->ah:D

    iput-wide v0, p0, Lcom/baidu/location/g;->ai:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/location/g;->aj:J

    iput-boolean v2, p0, Lcom/baidu/location/g;->ak:Z

    iput-boolean v2, p0, Lcom/baidu/location/g;->al:Z

    const/4 v0, 0x6

    iput v0, p0, Lcom/baidu/location/g;->am:I

    const/16 v0, 0x2710

    iput v0, p0, Lcom/baidu/location/g;->an:I

    const-string v0, "bdcltb09"

    iput-object v0, p0, Lcom/baidu/location/g;->ao:Ljava/lang/String;

    const-string v0, "wof"

    iput-object v0, p0, Lcom/baidu/location/g;->ap:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/location/g;->P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ls.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/location/g;->aq:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/g;->ar:Z

    :try_start_0
    invoke-direct {p0}, Lcom/baidu/location/g;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Z)Ljava/lang/String;
    .locals 14

    const/4 v13, 0x3

    const/4 v12, 0x2

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/baidu/location/g;->aa:Z

    if-eqz v0, :cond_0

    iget-wide v8, p0, Lcom/baidu/location/g;->ah:D

    iget-wide v6, p0, Lcom/baidu/location/g;->ai:D

    const-wide v4, 0x406ecccccccccccdL    # 246.4

    move v0, v1

    move v3, v1

    :goto_0
    if-eqz v3, :cond_2

    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"result\":{\"time\":\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/K;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\",\"error\":\"66\"},\"content\":{\"point\":{\"x\":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\"%f\",\"y\":\"%f\"},\"radius\":\"%f\",\"isCellChanged\":\"%b\"}}"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v10, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v10, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v10, v12

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v10, v13

    invoke-static {v3, v0, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/baidu/location/g;->Z:Z

    if-eqz v0, :cond_4

    iget-wide v8, p0, Lcom/baidu/location/g;->ae:D

    iget-wide v6, p0, Lcom/baidu/location/g;->af:D

    iget-wide v4, p0, Lcom/baidu/location/g;->ag:D

    invoke-static {}, Lcom/baidu/location/v;->aI()Lcom/baidu/location/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/v;->aK()Z

    move-result v0

    move v3, v1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "{\"result\":{\"time\":\""

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/baidu/location/K;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "\",\"error\":\"68\"},\"content\":{\"point\":{\"x\":"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "\"%f\",\"y\":\"%f\"},\"radius\":\"%f\",\"isCellChanged\":\"%b\"}}"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v10, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v11, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v11, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v11, v12

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v11, v13

    invoke-static {v10, v3, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"result\":{\"time\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/K;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"error\":\"67\"}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"result\":{\"time\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/baidu/location/K;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"error\":\"63\"}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_4
    move v0, v2

    move v3, v2

    move-wide v6, v4

    move-wide v8, v4

    goto/16 :goto_0
.end method

.method private a()V
    .locals 1

    invoke-static {}, Lcom/baidu/location/aj;->at()Lcom/baidu/location/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/aj;->aw()Lcom/baidu/location/aj$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/baidu/location/aj$a;->goto()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/location/g;->a(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/baidu/location/D;->cs()Lcom/baidu/location/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/D;->cn()Lcom/baidu/location/D$b;

    move-result-object v0

    iget-object v0, v0, Lcom/baidu/location/D$b;->for:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/baidu/location/g;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Landroid/os/Message;)V
    .locals 2

    invoke-static {}, Lcom/baidu/location/T;->q()Lcom/baidu/location/T;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/baidu/location/g;->case(Z)Lcom/baidu/location/BDLocation;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/baidu/location/T;->if(Lcom/baidu/location/BDLocation;Landroid/os/Message;)V

    return-void
.end method

.method private a(Lcom/baidu/location/D$b;Lcom/baidu/location/BDLocation;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 20

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v2

    const/16 v3, 0xa1

    if-ne v2, v3, :cond_0

    const-string v2, "wf"

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v2

    const/high16 v3, 0x43960000    # 300.0f

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/baidu/location/D$b;->for:Ljava/util/List;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/16 v3, 0x1c

    shr-long/2addr v4, v3

    long-to-int v14, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/baidu/location/D$b;->for:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move v3, v2

    :cond_2
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    iget v4, v2, Landroid/net/wifi/ScanResult;->level:I

    if-eqz v4, :cond_2

    add-int/lit8 v11, v3, 0x1

    const/4 v3, 0x6

    if-gt v11, v3, :cond_0

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    iget-object v2, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v10, ":"

    const-string v12, ""

    invoke-virtual {v2, v10, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/location/Jni;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "select * from wof where id = \""

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, "\";"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    const-wide v4, 0x405c4f089a027525L    # 113.2349

    sub-double v8, v2, v4

    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    const-wide v4, 0x407b01fb15b573ebL    # 432.1238

    sub-double v6, v2, v4

    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v2, 0x5

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v2, 0x1

    move v12, v3

    move v13, v4

    move-wide v4, v8

    move-wide/from16 v18, v6

    move v6, v2

    move-wide/from16 v2, v18

    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    if-nez v6, :cond_4

    const-string v2, "mktime"

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v4

    const-wide v6, 0x405c4f089a027525L    # 113.2349

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v2, "time"

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v4

    const-wide v6, 0x407b01fb15b573ebL    # 432.1238

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v2, "bc"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "cc"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "ac"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "id"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "wof"

    const/4 v3, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_3
    :goto_2
    move v3, v11

    goto/16 :goto_0

    :cond_4
    if-nez v12, :cond_5

    move v3, v11

    goto/16 :goto_0

    :cond_5
    const/4 v6, 0x1

    new-array v10, v6, [F

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v8

    invoke-static/range {v2 .. v10}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v6, 0x0

    aget v6, v10, v6

    const v7, 0x44bb8000    # 1500.0f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_7

    add-int/lit8 v2, v12, 0x1

    const/16 v3, 0xa

    if-le v2, v3, :cond_6

    mul-int/lit8 v3, v13, 0x3

    if-le v2, v3, :cond_6

    const-string v2, "mktime"

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v4

    const-wide v6, 0x405c4f089a027525L    # 113.2349

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v2, "time"

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v4

    const-wide v6, 0x407b01fb15b573ebL    # 432.1238

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v2, "bc"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "cc"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "ac"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    :try_start_1
    const-string v2, "wof"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-gtz v2, :cond_3

    goto/16 :goto_2

    :cond_6
    :try_start_2
    const-string v3, "cc"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    :catch_0
    move-exception v2

    goto/16 :goto_2

    :cond_7
    int-to-double v6, v13

    mul-double/2addr v4, v6

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v6

    add-double/2addr v4, v6

    add-int/lit8 v6, v13, 0x1

    int-to-double v6, v6

    div-double/2addr v4, v6

    int-to-double v6, v13

    mul-double/2addr v2, v6

    invoke-virtual/range {p2 .. p2}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v6

    add-double/2addr v2, v6

    add-int/lit8 v6, v13, 0x1

    int-to-double v6, v6

    div-double/2addr v2, v6

    const-string v6, "mktime"

    const-wide v8, 0x405c4f089a027525L    # 113.2349

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v4, "time"

    const-wide v6, 0x407b01fb15b573ebL    # 432.1238

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v2, "bc"

    add-int/lit8 v3, v13, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "ac"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    :catch_1
    move-exception v2

    goto/16 :goto_2

    :cond_8
    move v12, v4

    move v13, v5

    move-wide v4, v8

    move-wide/from16 v18, v6

    move v6, v3

    move-wide/from16 v2, v18

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/baidu/location/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/baidu/location/g;->c()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/g;Lcom/baidu/location/D$b;Lcom/baidu/location/BDLocation;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/location/g;->a(Lcom/baidu/location/D$b;Lcom/baidu/location/BDLocation;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/location/g;Ljava/lang/String;Lcom/baidu/location/aj$a;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/location/g;->a(Ljava/lang/String;Lcom/baidu/location/aj$a;Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/baidu/location/g;->Y:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/baidu/location/g;->aq:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    iput-boolean v3, p0, Lcom/baidu/location/g;->Z:Z

    goto :goto_0

    :cond_3
    iput-boolean v3, p0, Lcom/baidu/location/g;->Z:Z

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select * from bdcltb09 where id = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    iput-object p1, p0, Lcom/baidu/location/g;->Y:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/baidu/location/g;->aj:J

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    const-wide v4, 0x40934dbaacd9e83eL    # 1235.4323

    sub-double/2addr v2, v4

    iput-wide v2, p0, Lcom/baidu/location/g;->ae:D

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    const-wide v4, 0x40b0e60000000000L    # 4326.0

    sub-double/2addr v2, v4

    iput-wide v2, p0, Lcom/baidu/location/g;->ag:D

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    const-wide v4, 0x40a27ea4b5dcc63fL    # 2367.3217

    sub-double/2addr v2, v4

    iput-wide v2, p0, Lcom/baidu/location/g;->af:D

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/baidu/location/g;->Z:Z

    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Lcom/baidu/location/aj$a;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {p2}, Lcom/baidu/location/aj$a;->if()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/baidu/location/v;->aI()Lcom/baidu/location/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/location/v;->aK()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const/16 v3, 0x1c

    shr-long/2addr v6, v3

    long-to-int v6, v6

    invoke-virtual {p2}, Lcom/baidu/location/aj$a;->goto()Ljava/lang/String;

    move-result-object v7

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "result"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "error"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/16 v9, 0xa1

    if-ne v8, v9, :cond_3

    const-string v8, "content"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v3, "clf"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v1, "clf"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "point"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-string v2, "y"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-string v1, "radius"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_1
    if-nez v0, :cond_0

    const-wide v8, 0x40934dbaacd9e83eL    # 1235.4323

    add-double/2addr v4, v8

    const-wide v8, 0x40a27ea4b5dcc63fL    # 2367.3217

    add-double/2addr v2, v8

    const v0, 0x45873000    # 4326.0f

    add-float/2addr v0, v1

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "time"

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v4, "tag"

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v0, "type"

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string v0, "ac"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_1
    const-string v0, "bdcltb09"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "id"

    invoke-virtual {v1, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bdcltb09"

    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_2
    :try_start_2
    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    const/4 v8, 0x2

    aget-object v1, v1, v8

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    goto/16 :goto_1

    :cond_3
    const/16 v0, 0xa7

    if-ne v8, v0, :cond_4

    const-string v0, "bdcltb09"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p3, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :cond_4
    move v0, v1

    move v1, v2

    move-wide v2, v4

    goto/16 :goto_1
.end method

.method private a(Ljava/util/List;)V
    .locals 26

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/baidu/location/g;->aa:Z

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/location/g;->aq:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object/from16 v21, v2

    :goto_1
    if-eqz v21, :cond_0

    if-eqz p1, :cond_0

    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    move v11, v2

    move-object v12, v3

    move v13, v4

    move v14, v5

    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    move v3, v10

    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    add-int/lit8 v15, v3, 0x1

    const/16 v3, 0xa

    if-le v15, v3, :cond_4

    :cond_2
    :goto_3
    if-lez v14, :cond_3

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/baidu/location/g;->aa:Z

    int-to-double v2, v14

    div-double v2, v18, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/baidu/location/g;->ah:D

    int-to-double v2, v14

    div-double v2, v16, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/baidu/location/g;->ai:D

    :cond_3
    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    move-object/from16 v21, v2

    goto :goto_1

    :cond_4
    iget-object v2, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/location/Jni;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select * from wof where id = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    const-wide v4, 0x405c4f089a027525L    # 113.2349

    sub-double v4, v2, v4

    const/4 v2, 0x2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    const-wide v8, 0x407b01fb15b573ebL    # 432.1238

    sub-double/2addr v2, v8

    const/4 v7, 0x3

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    const/4 v7, 0x4

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x5

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/16 v6, 0x8

    if-le v8, v6, :cond_5

    if-le v8, v7, :cond_5

    move v3, v15

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/baidu/location/g;->Z:Z

    if-eqz v6, :cond_7

    const/4 v6, 0x1

    new-array v10, v6, [F

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/baidu/location/g;->af:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/baidu/location/g;->ae:D

    invoke-static/range {v2 .. v10}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v6, 0x0

    aget v6, v10, v6

    float-to-double v6, v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/baidu/location/g;->ag:D

    const-wide v24, 0x409f400000000000L    # 2000.0

    add-double v8, v8, v24

    cmpl-double v6, v6, v8

    if-lez v6, :cond_6

    move v3, v15

    goto/16 :goto_2

    :cond_6
    const/4 v13, 0x1

    add-double v18, v18, v4

    add-double v16, v16, v2

    add-int/lit8 v14, v14, 0x1

    move v2, v11

    move-object v3, v12

    move v4, v13

    move v5, v14

    move-wide/from16 v6, v16

    move-wide/from16 v8, v18

    :goto_4
    const/4 v10, 0x4

    if-le v5, v10, :cond_e

    move v14, v5

    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    goto/16 :goto_3

    :cond_7
    if-eqz v13, :cond_9

    const/4 v6, 0x1

    new-array v10, v6, [F

    int-to-double v6, v14

    div-double v6, v16, v6

    int-to-double v8, v14

    div-double v8, v18, v8

    invoke-static/range {v2 .. v10}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v2, 0x0

    aget v2, v10, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    move v3, v15

    goto/16 :goto_2

    :cond_8
    move v2, v11

    move-object v3, v12

    move v4, v13

    move v5, v14

    move-wide/from16 v6, v16

    move-wide/from16 v8, v18

    goto :goto_4

    :cond_9
    if-nez v12, :cond_a

    const/16 v6, 0x8

    new-array v12, v6, [D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v6, v11, 0x1

    :try_start_2
    aput-wide v4, v12, v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v11, v6, 0x1

    :try_start_3
    aput-wide v2, v12, v6

    move v2, v11

    move-object v3, v12

    move v4, v13

    move v5, v14

    move-wide/from16 v6, v16

    move-wide/from16 v8, v18

    goto :goto_4

    :cond_a
    const/4 v6, 0x0

    move/from16 v20, v6

    :goto_5
    move/from16 v0, v20

    if-ge v0, v11, :cond_b

    const/4 v6, 0x1

    new-array v10, v6, [F

    add-int/lit8 v6, v20, 0x1

    aget-wide v6, v12, v6

    aget-wide v8, v12, v20

    invoke-static/range {v2 .. v10}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    const/4 v6, 0x0

    aget v6, v10, v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/high16 v7, 0x447a0000    # 1000.0f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_10

    const/4 v6, 0x1

    :try_start_4
    aget-wide v8, v12, v20

    add-double v18, v18, v8

    add-int/lit8 v7, v20, 0x1

    aget-wide v8, v12, v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    add-double v8, v8, v16

    add-int/lit8 v7, v14, 0x1

    move-wide/from16 v16, v18

    :goto_6
    add-int/lit8 v10, v20, 0x2

    move/from16 v20, v10

    move v13, v6

    move v14, v7

    move-wide/from16 v18, v16

    move-wide/from16 v16, v8

    goto :goto_5

    :cond_b
    if-eqz v13, :cond_c

    add-double v18, v18, v4

    add-double v16, v16, v2

    add-int/lit8 v14, v14, 0x1

    move v2, v11

    move-object v3, v12

    move v4, v13

    move v5, v14

    move-wide/from16 v6, v16

    move-wide/from16 v8, v18

    goto/16 :goto_4

    :cond_c
    const/16 v6, 0x8

    if-ge v11, v6, :cond_d

    add-int/lit8 v6, v11, 0x1

    :try_start_5
    aput-wide v4, v12, v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    add-int/lit8 v11, v6, 0x1

    :try_start_6
    aput-wide v2, v12, v6

    move v2, v11

    move-object v3, v12

    move v4, v13

    move v5, v14

    move-wide/from16 v6, v16

    move-wide/from16 v8, v18

    goto/16 :goto_4

    :cond_d
    invoke-virtual/range {v21 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    :catch_1
    move-exception v2

    move v2, v11

    move-object v3, v12

    move v4, v13

    move v5, v14

    move-wide/from16 v6, v16

    move-wide/from16 v8, v18

    :cond_e
    :goto_7
    move v11, v2

    move-object v12, v3

    move v13, v4

    move v14, v5

    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    move v3, v15

    goto/16 :goto_2

    :cond_f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move v3, v15

    goto/16 :goto_2

    :catch_2
    move-exception v2

    move v2, v6

    move-object v3, v12

    move v4, v13

    move v5, v14

    move-wide/from16 v8, v18

    move-wide/from16 v6, v16

    goto :goto_7

    :catch_3
    move-exception v2

    move v2, v11

    move-object v3, v12

    move v4, v6

    move v5, v14

    move-wide/from16 v8, v18

    move-wide/from16 v6, v16

    goto :goto_7

    :cond_10
    move v6, v13

    move v7, v14

    move-wide/from16 v8, v16

    move-wide/from16 v16, v18

    goto :goto_6
.end method

.method static synthetic a(Lcom/baidu/location/g;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/baidu/location/g;->al:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/location/g;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/g;->aq:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/baidu/location/g;->P:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/baidu/location/g;->aq:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "CREATE TABLE IF NOT EXISTS bdcltb09(id CHAR(40) PRIMARY KEY,time DOUBLE,tag DOUBLE, type DOUBLE , ac INT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "CREATE TABLE IF NOT EXISTS wof(id CHAR(15) PRIMARY KEY,mktime DOUBLE,time DOUBLE, ac INT, bc INT, cc INT);"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private c()V
    .locals 12

    const-wide/16 v10, 0x2710

    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/location/g;->aq:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v4, v0

    :goto_0
    if-nez v4, :cond_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-object v4, v5

    goto :goto_0

    :cond_0
    const-string v0, "wof"

    invoke-static {v4, v0}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v6

    const-string v0, "bdcltb09"

    invoke-static {v4, v0}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v0, v6, v10

    if-lez v0, :cond_3

    move v3, v1

    :goto_2
    cmp-long v0, v8, v10

    if-lez v0, :cond_4

    move v0, v1

    :goto_3
    if-nez v3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    new-instance v6, Lcom/baidu/location/g$a;

    invoke-direct {v6, p0, v5}, Lcom/baidu/location/g$a;-><init>(Lcom/baidu/location/g;Lcom/baidu/location/h;)V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-virtual {v6, v5}, Lcom/baidu/location/g$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3
.end method

.method public static cP()Lcom/baidu/location/g;
    .locals 1

    sget-object v0, Lcom/baidu/location/g;->a:Lcom/baidu/location/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/baidu/location/g;

    invoke-direct {v0}, Lcom/baidu/location/g;-><init>()V

    sput-object v0, Lcom/baidu/location/g;->a:Lcom/baidu/location/g;

    :cond_0
    sget-object v0, Lcom/baidu/location/g;->a:Lcom/baidu/location/g;

    return-object v0
.end method


# virtual methods
.method public cT()V
    .locals 0

    return-void
.end method

.method public cU()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/location/g;->ar:Z

    invoke-static {}, Lcom/baidu/location/n;->bv()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/baidu/location/h;

    invoke-direct {v1, p0}, Lcom/baidu/location/h;-><init>(Lcom/baidu/location/g;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public case(Z)Lcom/baidu/location/BDLocation;
    .locals 2

    invoke-direct {p0}, Lcom/baidu/location/g;->a()V

    invoke-direct {p0, p1}, Lcom/baidu/location/g;->a(Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/baidu/location/BDLocation;

    invoke-direct {v1, v0}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public do(Ljava/lang/String;Ljava/util/List;)Lcom/baidu/location/BDLocation;
    .locals 2

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/baidu/location/g;->a(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p2}, Lcom/baidu/location/g;->a(Ljava/util/List;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/location/g;->a(Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/baidu/location/BDLocation;

    invoke-direct {v1, v0}, Lcom/baidu/location/BDLocation;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public if(Ljava/lang/String;Lcom/baidu/location/aj$a;Lcom/baidu/location/D$b;Lcom/baidu/location/BDLocation;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p2}, Lcom/baidu/location/aj$a;->if()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/location/v;->aI()Lcom/baidu/location/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/v;->aK()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_0
    move v3, v2

    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/baidu/location/BDLocation;->getLocType()I

    move-result v0

    const/16 v4, 0xa1

    if-ne v0, v4, :cond_1

    const-string v0, "wf"

    invoke-virtual {p4}, Lcom/baidu/location/BDLocation;->getNetworkLocationType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p4}, Lcom/baidu/location/BDLocation;->getRadius()F

    move-result v0

    const/high16 v4, 0x43960000    # 300.0f

    cmpg-float v0, v0, v4

    if-ltz v0, :cond_5

    :cond_1
    move v0, v2

    :goto_1
    iget-object v4, p3, Lcom/baidu/location/D$b;->for:Ljava/util/List;

    if-nez v4, :cond_2

    move v0, v2

    :cond_2
    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    :cond_3
    :goto_2
    return-void

    :cond_4
    iget-boolean v0, p0, Lcom/baidu/location/g;->al:Z

    if-nez v0, :cond_3

    iput-boolean v2, p0, Lcom/baidu/location/g;->al:Z

    new-instance v0, Lcom/baidu/location/g$b;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/baidu/location/g$b;-><init>(Lcom/baidu/location/g;Lcom/baidu/location/h;)V

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v2

    const/4 v1, 0x2

    aput-object p3, v3, v1

    const/4 v1, 0x3

    aput-object p4, v3, v1

    invoke-virtual {v0, v3}, Lcom/baidu/location/g$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    move v3, v1

    goto :goto_0
.end method

.method public j(Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/g;->a(Landroid/os/Message;)V

    return-void
.end method
