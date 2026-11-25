.class public Lcom/leanplum/Newsfeed;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/leanplum/Newsfeed;


# instance fields
.field private b:I

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/leanplum/NewsfeedMessage;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/leanplum/callbacks/NewsfeedChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/leanplum/Newsfeed;

    invoke-direct {v0}, Lcom/leanplum/Newsfeed;-><init>()V

    sput-object v0, Lcom/leanplum/Newsfeed;->a:Lcom/leanplum/Newsfeed;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v1, p0, Lcom/leanplum/Newsfeed;->d:Z

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/leanplum/Newsfeed;->f:Ljava/lang/Object;

    .line 41
    iput v1, p0, Lcom/leanplum/Newsfeed;->b:I

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/leanplum/Newsfeed;->c:Ljava/util/Map;

    .line 43
    iput-boolean v1, p0, Lcom/leanplum/Newsfeed;->d:Z

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/leanplum/Newsfeed;->e:Ljava/util/List;

    .line 45
    return-void
.end method

.method static a()Lcom/leanplum/Newsfeed;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/leanplum/Newsfeed;->a:Lcom/leanplum/Newsfeed;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 98
    iget-object v1, p0, Lcom/leanplum/Newsfeed;->e:Ljava/util/List;

    monitor-enter v1

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/leanplum/Newsfeed;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leanplum/callbacks/NewsfeedChangedCallback;

    .line 100
    invoke-static {}, Lcom/leanplum/m;->a()Lcom/leanplum/m;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/leanplum/m;->a(Ljava/lang/Runnable;)Ljava/lang/Boolean;

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private e()V
    .locals 5

    .prologue
    .line 140
    invoke-static {}, Lcom/leanplum/cu;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    invoke-static {}, Lcom/leanplum/y;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    invoke-static {}, Lcom/leanplum/Leanplum;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 147
    const-string/jumbo v1, "__leanplum__"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 149
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 150
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 151
    iget-object v0, p0, Lcom/leanplum/Newsfeed;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 152
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 153
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leanplum/NewsfeedMessage;

    .line 154
    invoke-virtual {v0}, Lcom/leanplum/NewsfeedMessage;->a()Ljava/util/Map;

    move-result-object v0

    .line 155
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 157
    :cond_2
    invoke-static {v3}, Lcom/leanplum/co;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 158
    new-instance v1, Lcom/leanplum/ad;

    invoke-static {}, Lcom/leanplum/y;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/leanplum/y;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/leanplum/ad;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string/jumbo v3, "__leanplum_newsfeed"

    invoke-virtual {v1, v0}, Lcom/leanplum/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 161
    :try_start_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method


# virtual methods
.method final a(I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/leanplum/Newsfeed;->b:I

    .line 56
    invoke-direct {p0}, Lcom/leanplum/Newsfeed;->e()V

    .line 57
    invoke-direct {p0}, Lcom/leanplum/Newsfeed;->d()V

    .line 58
    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 79
    iget v0, p0, Lcom/leanplum/Newsfeed;->b:I

    .line 80
    invoke-virtual {p0, p1}, Lcom/leanplum/Newsfeed;->messageForId(Ljava/lang/String;)Lcom/leanplum/NewsfeedMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/leanplum/NewsfeedMessage;->isRead()Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    add-int/lit8 v0, v0, -0x1

    .line 84
    :cond_0
    iget-object v1, p0, Lcom/leanplum/Newsfeed;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v1, p0, Lcom/leanplum/Newsfeed;->c:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/leanplum/Newsfeed;->a(Ljava/util/Map;IZ)V

    .line 87
    invoke-static {}, Lcom/leanplum/cu;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    :goto_0
    return-void

    .line 91
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 92
    const-string/jumbo v1, "newsfeedMessageId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string/jumbo v1, "deleteNewsfeedMessage"

    invoke-static {v1, v0}, Lcom/leanplum/y;->b(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/y;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/leanplum/y;->g()V

    goto :goto_0
.end method

.method final a(Ljava/util/Map;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/leanplum/NewsfeedMessage;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/leanplum/Newsfeed;->f:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :try_start_1
    iput p2, p0, Lcom/leanplum/Newsfeed;->b:I

    .line 64
    if-eqz p1, :cond_0

    .line 65
    iput-object p1, p0, Lcom/leanplum/Newsfeed;->c:Ljava/util/Map;

    .line 67
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/leanplum/Newsfeed;->d:Z

    .line 69
    if-eqz p3, :cond_1

    .line 70
    invoke-direct {p0}, Lcom/leanplum/Newsfeed;->e()V

    .line 72
    :cond_1
    invoke-direct {p0}, Lcom/leanplum/Newsfeed;->d()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 76
    :goto_0
    return-void

    .line 67
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public addNewsfeedChangedHandler(Lcom/leanplum/callbacks/NewsfeedChangedCallback;)V
    .locals 2

    .prologue
    .line 301
    iget-object v1, p0, Lcom/leanplum/Newsfeed;->e:Ljava/util/List;

    monitor-enter v1

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/leanplum/Newsfeed;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    iget-boolean v0, p0, Lcom/leanplum/Newsfeed;->d:Z

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {p1}, Lcom/leanplum/callbacks/NewsfeedChangedCallback;->newsfeedChanged()V

    .line 307
    :cond_0
    return-void

    .line 303
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public allMessages()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/leanplum/NewsfeedMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 266
    :try_start_0
    invoke-virtual {p0}, Lcom/leanplum/Newsfeed;->messagesIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 267
    invoke-virtual {p0, v0}, Lcom/leanplum/Newsfeed;->messageForId(Ljava/lang/String;)Lcom/leanplum/NewsfeedMessage;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    .line 272
    :cond_0
    return-object v1
.end method

.method final b()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 107
    invoke-static {}, Lcom/leanplum/cu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-static {}, Lcom/leanplum/Leanplum;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 111
    const-string/jumbo v1, "__leanplum__"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 113
    invoke-static {}, Lcom/leanplum/y;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0, v3, v3}, Lcom/leanplum/Newsfeed;->a(Ljava/util/Map;IZ)V

    goto :goto_0

    .line 118
    :cond_1
    new-instance v1, Lcom/leanplum/ad;

    invoke-static {}, Lcom/leanplum/y;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/leanplum/y;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Lcom/leanplum/ad;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string/jumbo v2, "__leanplum_newsfeed"

    const-string/jumbo v4, "{}"

    invoke-virtual {v1, v0, v2, v4}, Lcom/leanplum/ad;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {v0}, Lcom/leanplum/co;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 123
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 124
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 125
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 126
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 127
    invoke-static {v1, v0}, Lcom/leanplum/NewsfeedMessage;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/NewsfeedMessage;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcom/leanplum/NewsfeedMessage;->b()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 130
    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-virtual {v0}, Lcom/leanplum/NewsfeedMessage;->isRead()Z

    move-result v0

    if-nez v0, :cond_3

    .line 132
    add-int/lit8 v2, v2, 0x1

    move v0, v2

    :goto_2
    move v2, v0

    .line 135
    goto :goto_1

    .line 136
    :cond_2
    invoke-virtual {p0, v4, v2, v3}, Lcom/leanplum/Newsfeed;->a(Ljava/util/Map;IZ)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method final c()V
    .locals 2

    .prologue
    .line 168
    invoke-static {}, Lcom/leanplum/cu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    :goto_0
    return-void

    .line 172
    :cond_0
    const-string/jumbo v0, "getNewsfeedMessages"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/leanplum/y;->b(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/y;

    move-result-object v0

    .line 173
    new-instance v1, Lcom/leanplum/bq;

    invoke-direct {v1, p0}, Lcom/leanplum/bq;-><init>(Lcom/leanplum/Newsfeed;)V

    invoke-virtual {v0, v1}, Lcom/leanplum/y;->a(Lcom/leanplum/bi;)V

    .line 220
    invoke-virtual {v0}, Lcom/leanplum/y;->j()V

    goto :goto_0
.end method

.method public count()I
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/leanplum/Newsfeed;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public messageForId(Ljava/lang/String;)Lcom/leanplum/NewsfeedMessage;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/leanplum/Newsfeed;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leanplum/NewsfeedMessage;

    return-object v0
.end method

.method public messagesIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/leanplum/Newsfeed;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 245
    :try_start_0
    new-instance v0, Lcom/leanplum/br;

    invoke-direct {v0, p0}, Lcom/leanplum/br;-><init>(Lcom/leanplum/Newsfeed;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    return-object v1

    .line 253
    :catch_0
    move-exception v0

    .line 254
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public removeNewsfeedChangedHandler(Lcom/leanplum/callbacks/NewsfeedChangedCallback;)V
    .locals 2

    .prologue
    .line 313
    iget-object v1, p0, Lcom/leanplum/Newsfeed;->e:Ljava/util/List;

    monitor-enter v1

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/leanplum/Newsfeed;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 315
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unreadCount()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/leanplum/Newsfeed;->b:I

    return v0
.end method

.method public unreadMessages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/leanplum/NewsfeedMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 281
    invoke-virtual {p0}, Lcom/leanplum/Newsfeed;->allMessages()Ljava/util/List;

    move-result-object v0

    .line 282
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leanplum/NewsfeedMessage;

    .line 283
    invoke-virtual {v0}, Lcom/leanplum/NewsfeedMessage;->isRead()Z

    move-result v3

    if-nez v3, :cond_0

    .line 284
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 287
    :cond_1
    return-object v1
.end method
