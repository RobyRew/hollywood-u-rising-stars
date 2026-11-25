.class public Lcom/helpshift/dm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/helpshift/dn;

.field private b:Lcom/helpshift/bk;

.field private c:[Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "__hs__section_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "__hs__publish_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "__hs__title"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/helpshift/dm;->c:[Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/helpshift/dn;

    invoke-direct {v0, p1}, Lcom/helpshift/dn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/dm;->a:Lcom/helpshift/dn;

    .line 33
    new-instance v0, Lcom/helpshift/bk;

    invoke-direct {v0, p1}, Lcom/helpshift/bk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/helpshift/dm;->b:Lcom/helpshift/bk;

    .line 34
    return-void
.end method

.method private a(Landroid/database/Cursor;)Lcom/helpshift/ew;
    .locals 7

    .prologue
    .line 152
    new-instance v1, Lcom/helpshift/ew;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/helpshift/ew;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-object v1
.end method


# virtual methods
.method protected a(Lcom/helpshift/ew;)Lcom/helpshift/ew;
    .locals 4

    .prologue
    .line 37
    invoke-static {}, Lcom/helpshift/ei;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 38
    monitor-enter v1

    .line 39
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 40
    const-string/jumbo v2, "__hs__title"

    invoke-virtual {p1}, Lcom/helpshift/ew;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string/jumbo v2, "__hs__publish_id"

    invoke-virtual {p1}, Lcom/helpshift/ew;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string/jumbo v2, "__hs__section_id"

    invoke-virtual {p1}, Lcom/helpshift/ew;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string/jumbo v2, "__hs__sections"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 44
    invoke-virtual {p1, v2, v3}, Lcom/helpshift/ew;->a(J)V

    .line 45
    monitor-exit v1

    return-object p1

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected a(Ljava/lang/String;)Lcom/helpshift/ew;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 122
    invoke-static {}, Lcom/helpshift/ei;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 123
    monitor-enter v0

    .line 124
    if-eqz p1, :cond_0

    :try_start_0
    const-string/jumbo v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    :cond_0
    new-instance v1, Lcom/helpshift/ew;

    invoke-direct {v1}, Lcom/helpshift/ew;-><init>()V

    monitor-exit v0

    move-object v0, v1

    .line 147
    :goto_0
    return-object v0

    .line 132
    :cond_1
    const-string/jumbo v1, "__hs__sections"

    iget-object v2, p0, Lcom/helpshift/dm;->c:[Ljava/lang/String;

    const-string/jumbo v3, "__hs__publish_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 140
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 141
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    .line 142
    invoke-direct {p0, v2}, Lcom/helpshift/dm;->a(Landroid/database/Cursor;)Lcom/helpshift/ew;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 145
    :goto_1
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 147
    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v1

    .line 148
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_2
    move-object v1, v8

    goto :goto_1
.end method

.method protected a()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/helpshift/ew;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    invoke-static {}, Lcom/helpshift/ei;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 97
    monitor-enter v0

    .line 98
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 100
    const-string/jumbo v1, "__hs__sections"

    iget-object v2, p0, Lcom/helpshift/dm;->c:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 108
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 109
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    invoke-direct {p0, v2}, Lcom/helpshift/dm;->a(Landroid/database/Cursor;)Lcom/helpshift/ew;

    move-result-object v1

    .line 111
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v1

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v1

    .line 118
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 115
    :cond_0
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 117
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-object v8
.end method

.method protected a(Lorg/json/JSONArray;)V
    .locals 17

    .prologue
    .line 50
    invoke-static {}, Lcom/helpshift/ei;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    .line 51
    monitor-enter v15

    .line 54
    :try_start_0
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 55
    const/4 v2, 0x0

    move v14, v2

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v14, v2, :cond_2

    .line 56
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 57
    const-string/jumbo v3, "faqs"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 58
    const-string/jumbo v3, "title"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 59
    const-string/jumbo v4, "publish_id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 60
    const-string/jumbo v4, "id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    new-instance v4, Lcom/helpshift/ew;

    invoke-direct {v4, v2, v3, v8}, Lcom/helpshift/ew;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/helpshift/dm;->a(Lcom/helpshift/ew;)Lcom/helpshift/ew;

    .line 65
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 66
    const/4 v2, 0x0

    move v13, v2

    :goto_1
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v13, v2, :cond_1

    .line 67
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 68
    new-instance v3, Lcom/helpshift/l;

    const-wide/16 v4, -0x1

    const-string/jumbo v6, "id"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "publish_id"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "title"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "body"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const-string/jumbo v12, "is_rtl"

    invoke-virtual {v2, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v12, "true"

    if-ne v2, v12, :cond_0

    const/4 v2, 0x1

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-direct/range {v3 .. v12}, Lcom/helpshift/l;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Boolean;)V

    .line 76
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/helpshift/dm;->b:Lcom/helpshift/bk;

    invoke-virtual {v2, v3}, Lcom/helpshift/bk;->b(Lcom/helpshift/l;)Lcom/helpshift/l;

    .line 66
    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_1

    .line 68
    :cond_0
    const/4 v2, 0x0

    goto :goto_2

    .line 79
    :cond_1
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 80
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 83
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely()Z

    .line 55
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto/16 :goto_0

    .line 85
    :cond_2
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 90
    :try_start_1
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 92
    :goto_3
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    return-void

    .line 86
    :catch_0
    move-exception v2

    .line 87
    :try_start_2
    const-string/jumbo v3, "HelpShiftDebug"

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/helpshift/ek;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 90
    :try_start_3
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    .line 92
    :catchall_0
    move-exception v2

    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 90
    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method protected b()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/helpshift/dm;->a:Lcom/helpshift/dn;

    invoke-virtual {v0}, Lcom/helpshift/dn;->a()Lcom/helpshift/ei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/helpshift/ei;->a()V

    .line 161
    return-void
.end method
