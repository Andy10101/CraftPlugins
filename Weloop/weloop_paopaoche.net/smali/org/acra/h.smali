.class final Lorg/acra/h;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/acra/h;->a:Landroid/content/Context;

    .line 51
    return-void
.end method

.method private declared-synchronized a(Ljava/io/Reader;)Lorg/acra/b/c;
    .locals 14

    .prologue
    .line 162
    monitor-enter p0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 163
    const/16 v0, 0x28

    :try_start_0
    new-array v7, v0, [C

    .line 164
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 165
    const/4 v0, 0x1

    .line 167
    new-instance v9, Lorg/acra/b/c;

    invoke-direct {v9}, Lorg/acra/b/c;-><init>()V

    .line 168
    new-instance v10, Ljava/io/BufferedReader;

    const/16 v4, 0x2000

    invoke-direct {v10, p1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move v8, v0

    move v4, v6

    move v0, v1

    move v1, v5

    move v5, v3

    .line 171
    :goto_0
    invoke-virtual {v10}, Ljava/io/BufferedReader;->read()I

    move-result v3

    .line 172
    const/4 v6, -0x1

    if-ne v3, v6, :cond_0

    .line 308
    const/4 v3, 0x2

    if-ne v5, v3, :cond_13

    const/4 v3, 0x4

    if-gt v1, v3, :cond_13

    .line 310
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "luni.08"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 175
    :cond_0
    int-to-char v3, v3

    .line 177
    :try_start_1
    array-length v6, v7

    if-ne v2, v6, :cond_1

    .line 178
    array-length v6, v7

    mul-int/lit8 v6, v6, 0x2

    new-array v6, v6, [C

    .line 179
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v7, v11, v6, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v7, v6

    .line 182
    :cond_1
    const/4 v6, 0x2

    if-ne v5, v6, :cond_1a

    .line 183
    const/16 v6, 0x10

    invoke-static {v3, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    .line 184
    if-ltz v6, :cond_2

    .line 185
    shl-int/lit8 v4, v4, 0x4

    add-int/2addr v6, v4

    .line 186
    add-int/lit8 v4, v1, 0x1

    const/4 v1, 0x4

    if-ge v4, v1, :cond_19

    move v1, v4

    move v4, v6

    .line 187
    goto :goto_0

    .line 189
    :cond_2
    const/4 v5, 0x4

    if-gt v1, v5, :cond_3

    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "luni.09"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v5, v4

    move v4, v1

    .line 193
    :goto_1
    const/4 v6, 0x0

    .line 194
    add-int/lit8 v1, v2, 0x1

    int-to-char v11, v5

    aput-char v11, v7, v2

    .line 195
    const/16 v2, 0xa

    if-eq v3, v2, :cond_4

    const/16 v2, 0x85

    if-eq v3, v2, :cond_4

    move v2, v1

    move v1, v4

    move v4, v5

    move v5, v6

    .line 196
    goto :goto_0

    :cond_4
    move v2, v6

    move v6, v5

    move v5, v4

    .line 199
    :goto_2
    const/4 v4, 0x1

    if-ne v2, v4, :cond_7

    .line 200
    const/4 v4, 0x0

    .line 201
    sparse-switch v3, :sswitch_data_0

    move v2, v4

    .line 301
    :cond_5
    :goto_3
    const/4 v4, 0x0

    .line 302
    const/4 v8, 0x4

    if-ne v2, v8, :cond_6

    .line 304
    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    .line 306
    :cond_6
    add-int/lit8 v8, v1, 0x1

    aput-char v3, v7, v1

    move v1, v5

    move v5, v2

    move v2, v8

    move v8, v4

    move v4, v6

    .line 170
    goto :goto_0

    .line 203
    :sswitch_0
    const/4 v2, 0x3

    move v4, v6

    move v13, v5

    move v5, v2

    move v2, v1

    move v1, v13

    .line 204
    goto :goto_0

    .line 207
    :sswitch_1
    const/4 v2, 0x5

    move v4, v6

    move v13, v5

    move v5, v2

    move v2, v1

    move v1, v13

    .line 208
    goto/16 :goto_0

    .line 210
    :sswitch_2
    const/16 v2, 0x8

    move v3, v2

    move v2, v4

    .line 211
    goto :goto_3

    .line 213
    :sswitch_3
    const/16 v2, 0xc

    move v3, v2

    move v2, v4

    .line 214
    goto :goto_3

    .line 216
    :sswitch_4
    const/16 v2, 0xa

    move v3, v2

    move v2, v4

    .line 217
    goto :goto_3

    .line 219
    :sswitch_5
    const/16 v2, 0xd

    move v3, v2

    move v2, v4

    .line 220
    goto :goto_3

    .line 222
    :sswitch_6
    const/16 v2, 0x9

    move v3, v2

    move v2, v4

    .line 223
    goto :goto_3

    .line 225
    :sswitch_7
    const/4 v2, 0x2

    .line 226
    const/4 v5, 0x0

    move v4, v5

    move v13, v5

    move v5, v2

    move v2, v1

    move v1, v13

    .line 227
    goto/16 :goto_0

    .line 230
    :cond_7
    sparse-switch v3, :sswitch_data_1

    .line 284
    :cond_8
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 285
    const/4 v4, 0x3

    if-ne v2, v4, :cond_9

    .line 286
    const/4 v2, 0x5

    .line 289
    :cond_9
    if-eqz v1, :cond_17

    if-eq v1, v0, :cond_17

    const/4 v4, 0x5

    if-ne v2, v4, :cond_10

    move v4, v6

    move v13, v5

    move v5, v2

    move v2, v1

    move v1, v13

    .line 290
    goto/16 :goto_0

    .line 233
    :sswitch_8
    if-eqz v8, :cond_8

    .line 235
    :cond_a
    invoke-virtual {v10}, Ljava/io/BufferedReader;->read()I

    move-result v3

    .line 236
    const/4 v4, -0x1

    if-ne v3, v4, :cond_b

    move v4, v6

    move v13, v5

    move v5, v2

    move v2, v1

    move v1, v13

    .line 237
    goto/16 :goto_0

    .line 239
    :cond_b
    int-to-char v3, v3

    .line 242
    const/16 v4, 0xd

    if-eq v3, v4, :cond_17

    const/16 v4, 0xa

    if-eq v3, v4, :cond_17

    const/16 v4, 0x85

    if-ne v3, v4, :cond_a

    move v4, v6

    move v13, v5

    move v5, v2

    move v2, v1

    move v1, v13

    .line 246
    goto/16 :goto_0

    .line 250
    :sswitch_9
    const/4 v3, 0x3

    if-ne v2, v3, :cond_c

    .line 251
    const/4 v2, 0x5

    move v4, v6

    move v13, v5

    move v5, v2

    move v2, v1

    move v1, v13

    .line 252
    goto/16 :goto_0

    .line 257
    :cond_c
    :sswitch_a
    const/4 v4, 0x0

    .line 258
    const/4 v3, 0x1

    .line 259
    if-gtz v1, :cond_d

    if-nez v1, :cond_e

    if-nez v0, :cond_e

    .line 260
    :cond_d
    const/4 v2, -0x1

    if-ne v0, v2, :cond_18

    move v2, v1

    .line 263
    :goto_4
    new-instance v8, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {v8, v7, v0, v1}, Ljava/lang/String;-><init>([CII)V

    .line 264
    const-class v0, Lorg/acra/ReportField;

    const/4 v1, 0x0

    invoke-virtual {v8, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/acra/ReportField;

    invoke-virtual {v8, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lorg/acra/b/c;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :cond_e
    const/4 v0, -0x1

    .line 267
    const/4 v1, 0x0

    move v8, v3

    move v2, v1

    move v1, v5

    move v5, v4

    move v4, v6

    .line 268
    goto/16 :goto_0

    .line 270
    :sswitch_b
    const/4 v3, 0x4

    if-ne v2, v3, :cond_f

    move v0, v1

    .line 273
    :cond_f
    const/4 v2, 0x1

    move v4, v6

    move v13, v5

    move v5, v2

    move v2, v1

    move v1, v13

    .line 274
    goto/16 :goto_0

    .line 277
    :sswitch_c
    const/4 v4, -0x1

    if-ne v0, v4, :cond_8

    .line 278
    const/4 v2, 0x0

    move v0, v1

    move v4, v6

    move v13, v5

    move v5, v2

    move v2, v1

    move v1, v13

    .line 280
    goto/16 :goto_0

    .line 292
    :cond_10
    const/4 v4, -0x1

    if-ne v0, v4, :cond_11

    .line 293
    const/4 v2, 0x4

    move v4, v6

    move v13, v5

    move v5, v2

    move v2, v1

    move v1, v13

    .line 294
    goto/16 :goto_0

    .line 297
    :cond_11
    const/4 v4, 0x5

    if-eq v2, v4, :cond_12

    const/4 v4, 0x3

    if-ne v2, v4, :cond_5

    .line 298
    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 312
    :cond_13
    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    if-lez v2, :cond_16

    move v1, v2

    .line 315
    :goto_5
    if-ltz v1, :cond_15

    .line 316
    new-instance v3, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {v3, v7, v0, v2}, Ljava/lang/String;-><init>([CII)V

    .line 317
    const-class v0, Lorg/acra/ReportField;

    const/4 v2, 0x0

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/acra/ReportField;

    .line 318
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 319
    const/4 v2, 0x1

    if-ne v5, v2, :cond_14

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\u0000"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 322
    :cond_14
    invoke-virtual {v9, v0, v1}, Lorg/acra/b/c;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    :cond_15
    monitor-exit p0

    return-object v9

    :cond_16
    move v1, v0

    goto :goto_5

    :cond_17
    move v4, v6

    move v13, v5

    move v5, v2

    move v2, v1

    move v1, v13

    goto/16 :goto_0

    :cond_18
    move v2, v0

    goto/16 :goto_4

    :cond_19
    move v5, v6

    goto/16 :goto_1

    :cond_1a
    move v6, v4

    move v13, v1

    move v1, v2

    move v2, v5

    move v5, v13

    goto/16 :goto_2

    .line 201
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0xd -> :sswitch_0
        0x62 -> :sswitch_2
        0x66 -> :sswitch_3
        0x6e -> :sswitch_4
        0x72 -> :sswitch_5
        0x74 -> :sswitch_6
        0x75 -> :sswitch_7
        0x85 -> :sswitch_1
    .end sparse-switch

    .line 230
    :sswitch_data_1
    .sparse-switch
        0xa -> :sswitch_9
        0xd -> :sswitch_a
        0x21 -> :sswitch_8
        0x23 -> :sswitch_8
        0x3a -> :sswitch_c
        0x3d -> :sswitch_c
        0x5c -> :sswitch_b
        0x85 -> :sswitch_a
    .end sparse-switch
.end method

.method private a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0x20

    .line 336
    .line 337
    if-nez p3, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_5

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_5

    .line 338
    const-string v0, "\\ "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    const/4 v0, 0x1

    .line 342
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 373
    return-void

    .line 343
    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 344
    packed-switch v2, :pswitch_data_0

    .line 358
    :pswitch_0
    const-string v3, "\\#!=:"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_1

    if-eqz p3, :cond_2

    if-ne v2, v5, :cond_2

    .line 359
    :cond_1
    const/16 v3, 0x5c

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 361
    :cond_2
    if-lt v2, v5, :cond_3

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_3

    .line 362
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 342
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    :pswitch_1
    const-string v2, "\\t"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 349
    :pswitch_2
    const-string v2, "\\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 352
    :pswitch_3
    const-string v2, "\\f"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 355
    :pswitch_4
    const-string v2, "\\r"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 364
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 365
    const-string v2, "\\u"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    .line 366
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4

    if-lt v2, v4, :cond_4

    .line 369
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 367
    :cond_4
    const-string v4, "0"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_0

    .line 344
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private a(Ljava/io/BufferedInputStream;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 117
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->read()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 130
    :cond_1
    :goto_0
    return v0

    .line 118
    :cond_2
    const/16 v2, 0x23

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_1

    .line 121
    const/16 v2, 0x15

    if-ne v1, v2, :cond_0

    .line 122
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lorg/acra/b/c;
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lorg/acra/h;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v1

    .line 64
    if-nez v1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid crash report fileName : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/BufferedInputStream;

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 70
    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 71
    invoke-direct {p0, v0}, Lorg/acra/h;->a(Ljava/io/BufferedInputStream;)Z

    move-result v2

    .line 72
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    .line 74
    if-nez v2, :cond_1

    .line 75
    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "ISO8859-1"

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lorg/acra/h;->a(Ljava/io/Reader;)Lorg/acra/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 80
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 77
    :goto_0
    return-object v0

    :cond_1
    :try_start_1
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v2}, Lorg/acra/h;->a(Ljava/io/Reader;)Lorg/acra/b/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 80
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 81
    throw v0
.end method

.method public a(Lorg/acra/b/c;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 95
    iget-object v0, p0, Lorg/acra/h;->a:Landroid/content/Context;

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 97
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v0, 0xc8

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 98
    new-instance v4, Ljava/io/OutputStreamWriter;

    const-string v0, "ISO8859_1"

    invoke-direct {v4, v2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Lorg/acra/b/c;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 113
    return-void

    .line 100
    :cond_0
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 101
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/acra/ReportField;

    invoke-virtual {v1}, Lorg/acra/ReportField;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    const/4 v6, 0x1

    invoke-direct {p0, v3, v1, v6}, Lorg/acra/h;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 103
    const/16 v1, 0x3d

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 104
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v3, v0, v1}, Lorg/acra/h;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 105
    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 107
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    .line 111
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 112
    throw v0
.end method
