.class public Lorg/acra/e/e;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/acra/e/e$a;
    }
.end annotation


# direct methods
.method private static a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 156
    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 170
    :cond_0
    :goto_0
    return-object p0

    .line 158
    :cond_1
    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    .line 161
    :cond_2
    const-string v0, "(?:^|\\s)([1-9](?:\\d*|(?:\\d{0,2})(?:,\\d{3})*)(?:\\.\\d*[1-9])?|0?\\.\\d*[1-9]|0)(?:\\s|$)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    .line 164
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Lorg/acra/b/c;)Lorg/json/JSONObject;
    .locals 9

    .prologue
    .line 67
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 68
    invoke-virtual {p0}, Lorg/acra/b/c;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    return-object v2

    .line 68
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/acra/ReportField;

    .line 72
    :try_start_0
    invoke-virtual {v0}, Lorg/acra/ReportField;->containsKeyValuePairs()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 74
    invoke-virtual {p0, v0}, Lorg/acra/b/c;->a(Lorg/acra/ReportField;)Ljava/lang/String;

    move-result-object v1

    .line 75
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x400

    invoke-direct {v5, v6, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    if-nez v1, :cond_1

    .line 84
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Lorg/acra/ReportField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v1

    .line 90
    new-instance v2, Lorg/acra/e/e$a;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not create JSON object for key "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lorg/acra/e/e$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 79
    :cond_1
    :try_start_3
    invoke-static {v4, v1}, Lorg/acra/e/e;->a(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 81
    :catch_1
    move-exception v1

    .line 82
    :try_start_4
    sget-object v5, Lorg/acra/ACRA;->log:Lorg/acra/d/a;

    sget-object v6, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error while converting "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/acra/ReportField;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to JSON."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7, v1}, Lorg/acra/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 87
    :cond_2
    invoke-virtual {v0}, Lorg/acra/ReportField;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Lorg/acra/b/c;->a(Lorg/acra/ReportField;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/acra/e/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 135
    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 136
    if-lez v0, :cond_2

    .line 138
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 139
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {v0}, Lorg/acra/e/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 141
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 142
    check-cast v0, Ljava/lang/String;

    const-string v2, "\\\\n"

    const-string v3, "\n"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    :cond_0
    const-string v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 145
    array-length v3, v2

    if-le v3, v4, :cond_1

    .line 146
    invoke-static {p0, v2, v0}, Lorg/acra/e/e;->a(Lorg/json/JSONObject;[Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    :goto_0
    return-void

    .line 148
    :cond_1
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 151
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;[Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 187
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 202
    return-void

    .line 188
    :cond_0
    aget-object v2, p1, v0

    .line 189
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 191
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 193
    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_1
    move-object p0, v1

    .line 187
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    :cond_1
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_1

    .line 199
    :cond_2
    invoke-virtual {p0, v2, p2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2
.end method
