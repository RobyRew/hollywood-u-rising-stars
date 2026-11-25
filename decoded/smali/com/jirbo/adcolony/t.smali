.class public Lcom/jirbo/adcolony/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Z

.field static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/t;->a:Z

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jirbo/adcolony/ba;->n:Z

    .line 50
    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 195
    sget-object v0, Lcom/jirbo/adcolony/cx;->c:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v1, "[ADC] AdColony resume called."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/cx;

    .line 196
    sput-boolean v2, Lcom/jirbo/adcolony/ba;->q:Z

    .line 197
    sput-boolean v2, Lcom/jirbo/adcolony/ba;->i:Z

    .line 198
    invoke-static {p0}, Lcom/jirbo/adcolony/ba;->a(Landroid/app/Activity;)V

    .line 199
    sput-boolean v2, Lcom/jirbo/adcolony/ba;->p:Z

    .line 201
    invoke-static {}, Lcom/jirbo/adcolony/ba;->f()V

    .line 202
    if-nez p0, :cond_0

    .line 204
    sget-object v0, Lcom/jirbo/adcolony/cx;->d:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v1, "Activity reference is null. Disabling AdColony."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/cx;

    .line 205
    invoke-static {}, Lcom/jirbo/adcolony/t;->a()V

    .line 240
    :goto_0
    return-void

    .line 208
    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/ba;->k:Lcom/jirbo/adcolony/y;

    if-eqz v0, :cond_1

    .line 210
    sget-object v0, Lcom/jirbo/adcolony/ba;->K:Lcom/jirbo/adcolony/bb;

    sget-object v1, Lcom/jirbo/adcolony/ba;->k:Lcom/jirbo/adcolony/y;

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/bb;->a(Lcom/jirbo/adcolony/y;)V

    .line 211
    const/4 v0, 0x0

    sput-object v0, Lcom/jirbo/adcolony/ba;->k:Lcom/jirbo/adcolony/y;

    .line 213
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/jirbo/adcolony/v;

    invoke-direct {v1, p0}, Lcom/jirbo/adcolony/v;-><init>(Landroid/app/Activity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 238
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 239
    sput-boolean v2, Lcom/jirbo/adcolony/ba;->B:Z

    goto :goto_0
.end method

.method public static varargs a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 58
    sput-boolean v1, Lcom/jirbo/adcolony/t;->b:Z

    .line 60
    sget-boolean v0, Lcom/jirbo/adcolony/t;->a:Z

    if-nez v0, :cond_1

    .line 62
    sget-object v0, Lcom/jirbo/adcolony/ba;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 63
    sget-object v0, Lcom/jirbo/adcolony/ba;->ad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    sput-boolean v1, Lcom/jirbo/adcolony/t;->a:Z

    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_3

    .line 70
    new-instance v0, Lcom/jirbo/adcolony/x;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/x;-><init>(Landroid/app/Activity;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v3}, Lcom/jirbo/adcolony/x;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 77
    :goto_1
    sget-object v0, Lcom/jirbo/adcolony/ba;->ae:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 79
    new-instance v2, Lcom/jirbo/adcolony/u;

    invoke-direct {v2}, Lcom/jirbo/adcolony/u;-><init>()V

    .line 87
    sget-boolean v3, Lcom/jirbo/adcolony/ba;->w:Z

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/jirbo/adcolony/ba;->x:Z

    if-eqz v3, :cond_7

    .line 89
    :cond_2
    sget-boolean v3, Lcom/jirbo/adcolony/ba;->n:Z

    if-nez v3, :cond_0

    .line 91
    if-nez p2, :cond_4

    .line 93
    const-string/jumbo v0, "Null App ID - disabling AdColony."

    invoke-static {v0}, Lcom/jirbo/adcolony/ba;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_3
    new-instance v0, Lcom/jirbo/adcolony/x;

    invoke-direct {v0, p0}, Lcom/jirbo/adcolony/x;-><init>(Landroid/app/Activity;)V

    new-array v2, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/jirbo/adcolony/x;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 97
    :cond_4
    if-nez p3, :cond_5

    .line 99
    const-string/jumbo v0, "Null Zone IDs array - disabling AdColony."

    invoke-static {v0}, Lcom/jirbo/adcolony/ba;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_5
    array-length v3, p3

    if-nez v3, :cond_6

    .line 105
    const-string/jumbo v0, "No Zone IDs provided - disabling AdColony."

    invoke-static {v0}, Lcom/jirbo/adcolony/ba;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_6
    invoke-static {p0}, Lcom/jirbo/adcolony/ba;->b(Landroid/app/Activity;)V

    .line 110
    sget-object v3, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    invoke-virtual {v3, p1, p2, p3}, Lcom/jirbo/adcolony/cb;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 112
    sput-boolean v6, Lcom/jirbo/adcolony/ba;->l:Z

    .line 113
    sput-boolean v6, Lcom/jirbo/adcolony/ba;->w:Z

    .line 114
    const-wide/32 v4, 0x1d4c0

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 120
    :cond_7
    sget-object v0, Lcom/jirbo/adcolony/ba;->I:Lcom/jirbo/adcolony/ADCVideo;

    if-nez v0, :cond_8

    sput-boolean v6, Lcom/jirbo/adcolony/ba;->t:Z

    .line 121
    :cond_8
    sget-object v0, Lcom/jirbo/adcolony/ba;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 122
    sget-object v0, Lcom/jirbo/adcolony/ba;->ad:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/jirbo/adcolony/ba;->af:Ljava/util/HashMap;

    move v0, v1

    .line 124
    :goto_2
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 126
    sget-object v2, Lcom/jirbo/adcolony/ba;->af:Ljava/util/HashMap;

    aget-object v3, p3, v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static a(Lcom/jirbo/adcolony/ax;)V
    .locals 1

    .prologue
    .line 323
    sget-object v0, Lcom/jirbo/adcolony/ba;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    :goto_0
    return-void

    .line 324
    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/ba;->ac:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static a(Lcom/jirbo/adcolony/z;)V
    .locals 1

    .prologue
    .line 338
    sget-object v0, Lcom/jirbo/adcolony/ba;->ad:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    :goto_0
    return-void

    .line 339
    :cond_0
    sget-object v0, Lcom/jirbo/adcolony/ba;->ad:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->a:Lcom/jirbo/adcolony/ca;

    iget-object v0, v0, Lcom/jirbo/adcolony/ca;->x:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->b:Lcom/jirbo/adcolony/bz;

    if-eqz v0, :cond_0

    .line 140
    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->a:Lcom/jirbo/adcolony/ca;

    iput-object p0, v0, Lcom/jirbo/adcolony/ca;->x:Ljava/lang/String;

    .line 141
    sget-boolean v0, Lcom/jirbo/adcolony/ba;->m:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->b:Lcom/jirbo/adcolony/bz;

    invoke-virtual {v0}, Lcom/jirbo/adcolony/bz;->f()V

    .line 144
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 164
    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->a:Lcom/jirbo/adcolony/ca;

    iget-object v0, v0, Lcom/jirbo/adcolony/ca;->y:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->a:Lcom/jirbo/adcolony/ca;

    iput-object p0, v0, Lcom/jirbo/adcolony/ca;->y:Ljava/lang/String;

    .line 167
    sput-boolean v1, Lcom/jirbo/adcolony/ba;->w:Z

    .line 168
    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->b:Lcom/jirbo/adcolony/bz;

    iput-boolean v2, v0, Lcom/jirbo/adcolony/bz;->d:Z

    .line 169
    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->b:Lcom/jirbo/adcolony/bz;

    iput-boolean v1, v0, Lcom/jirbo/adcolony/bz;->b:Z

    .line 170
    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->b:Lcom/jirbo/adcolony/bz;

    iput-boolean v2, v0, Lcom/jirbo/adcolony/bz;->c:Z

    .line 172
    :cond_0
    return-void
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 187
    invoke-static {}, Lcom/jirbo/adcolony/ct;->i()Z

    move-result v0

    return v0
.end method

.method public static c()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 249
    sget-object v0, Lcom/jirbo/adcolony/cx;->c:Lcom/jirbo/adcolony/cx;

    const-string/jumbo v1, "[ADC] AdColony pause called."

    invoke-virtual {v0, v1}, Lcom/jirbo/adcolony/cx;->b(Ljava/lang/Object;)Lcom/jirbo/adcolony/cx;

    .line 250
    sput-boolean v4, Lcom/jirbo/adcolony/ba;->i:Z

    .line 251
    sput-boolean v4, Lcom/jirbo/adcolony/ba;->q:Z

    move v1, v2

    .line 252
    :goto_0
    sget-object v0, Lcom/jirbo/adcolony/ba;->ae:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 254
    sget-object v0, Lcom/jirbo/adcolony/ba;->ae:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 256
    sget-object v0, Lcom/jirbo/adcolony/ba;->ae:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jirbo/adcolony/an;

    .line 257
    iput-boolean v4, v0, Lcom/jirbo/adcolony/an;->u:Z

    .line 258
    iget-object v3, v0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lcom/jirbo/adcolony/an;->p:Z

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/jirbo/adcolony/an;->V:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 261
    sget-boolean v3, Lcom/jirbo/adcolony/ba;->t:Z

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/jirbo/adcolony/an;->L:Lcom/jirbo/adcolony/as;

    invoke-virtual {v3, v2}, Lcom/jirbo/adcolony/as;->setVisibility(I)V

    .line 262
    :cond_0
    invoke-virtual {v0}, Lcom/jirbo/adcolony/an;->e()V

    .line 252
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 266
    :cond_2
    return-void
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 292
    sget-object v1, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    if-nez v1, :cond_1

    .line 296
    :cond_0
    :goto_0
    return v0

    .line 293
    :cond_1
    sget-object v1, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v1, v1, Lcom/jirbo/adcolony/cb;->b:Lcom/jirbo/adcolony/bz;

    if-eqz v1, :cond_0

    .line 294
    sget-object v1, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v1, v1, Lcom/jirbo/adcolony/cb;->b:Lcom/jirbo/adcolony/bz;

    iget-object v1, v1, Lcom/jirbo/adcolony/bz;->i:Lcom/jirbo/adcolony/dn;

    if-eqz v1, :cond_0

    .line 295
    sget-object v1, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v1, v1, Lcom/jirbo/adcolony/cb;->b:Lcom/jirbo/adcolony/bz;

    iget-object v1, v1, Lcom/jirbo/adcolony/bz;->i:Lcom/jirbo/adcolony/dn;

    iget-object v1, v1, Lcom/jirbo/adcolony/dn;->n:Lcom/jirbo/adcolony/dj;

    if-eqz v1, :cond_0

    .line 296
    sget-object v1, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v1, v1, Lcom/jirbo/adcolony/cb;->b:Lcom/jirbo/adcolony/bz;

    invoke-virtual {v1, p0, v0}, Lcom/jirbo/adcolony/bz;->a(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static d()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 287
    invoke-static {}, Lcom/jirbo/adcolony/ba;->b()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 301
    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    if-nez v0, :cond_1

    .line 314
    :cond_0
    :goto_0
    return v1

    .line 302
    :cond_1
    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->b:Lcom/jirbo/adcolony/bz;

    if-eqz v0, :cond_0

    .line 303
    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->b:Lcom/jirbo/adcolony/bz;

    iget-object v0, v0, Lcom/jirbo/adcolony/bz;->i:Lcom/jirbo/adcolony/dn;

    if-eqz v0, :cond_0

    .line 304
    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->b:Lcom/jirbo/adcolony/bz;

    iget-object v0, v0, Lcom/jirbo/adcolony/bz;->i:Lcom/jirbo/adcolony/dn;

    iget-object v0, v0, Lcom/jirbo/adcolony/dn;->n:Lcom/jirbo/adcolony/dj;

    if-eqz v0, :cond_0

    .line 305
    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->b:Lcom/jirbo/adcolony/bz;

    iget-object v0, v0, Lcom/jirbo/adcolony/bz;->i:Lcom/jirbo/adcolony/dn;

    iget-object v0, v0, Lcom/jirbo/adcolony/dn;->n:Lcom/jirbo/adcolony/dj;

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/dj;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/dg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->b:Lcom/jirbo/adcolony/bz;

    iget-object v0, v0, Lcom/jirbo/adcolony/bz;->i:Lcom/jirbo/adcolony/dn;

    iget-object v0, v0, Lcom/jirbo/adcolony/dn;->n:Lcom/jirbo/adcolony/dj;

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/dj;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/dg;

    move-result-object v0

    iget-object v0, v0, Lcom/jirbo/adcolony/dg;->m:Lcom/jirbo/adcolony/dm;

    if-eqz v0, :cond_0

    .line 307
    sget-object v0, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v0, v0, Lcom/jirbo/adcolony/cb;->b:Lcom/jirbo/adcolony/bz;

    iget-object v0, v0, Lcom/jirbo/adcolony/bz;->i:Lcom/jirbo/adcolony/dn;

    iget-object v0, v0, Lcom/jirbo/adcolony/dn;->n:Lcom/jirbo/adcolony/dj;

    invoke-virtual {v0, p0}, Lcom/jirbo/adcolony/dj;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/dg;

    move-result-object v0

    iget-object v0, v0, Lcom/jirbo/adcolony/dg;->m:Lcom/jirbo/adcolony/dm;

    iget-object v0, v0, Lcom/jirbo/adcolony/dm;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    move v0, v1

    .line 309
    :goto_1
    sget-object v2, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v2, v2, Lcom/jirbo/adcolony/cb;->b:Lcom/jirbo/adcolony/bz;

    iget-object v2, v2, Lcom/jirbo/adcolony/bz;->i:Lcom/jirbo/adcolony/dn;

    iget-object v2, v2, Lcom/jirbo/adcolony/dn;->n:Lcom/jirbo/adcolony/dj;

    invoke-virtual {v2, p0}, Lcom/jirbo/adcolony/dj;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/dg;

    move-result-object v2

    iget-object v2, v2, Lcom/jirbo/adcolony/dg;->m:Lcom/jirbo/adcolony/dm;

    iget-object v2, v2, Lcom/jirbo/adcolony/dm;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 311
    sget-object v2, Lcom/jirbo/adcolony/ba;->c:Lcom/jirbo/adcolony/cb;

    iget-object v2, v2, Lcom/jirbo/adcolony/cb;->b:Lcom/jirbo/adcolony/bz;

    iget-object v2, v2, Lcom/jirbo/adcolony/bz;->i:Lcom/jirbo/adcolony/dn;

    iget-object v2, v2, Lcom/jirbo/adcolony/dn;->n:Lcom/jirbo/adcolony/dj;

    invoke-virtual {v2, p0}, Lcom/jirbo/adcolony/dj;->a(Ljava/lang/String;)Lcom/jirbo/adcolony/dg;

    move-result-object v2

    iget-object v2, v2, Lcom/jirbo/adcolony/dg;->m:Lcom/jirbo/adcolony/dm;

    invoke-virtual {v2, v0}, Lcom/jirbo/adcolony/dm;->a(I)Lcom/jirbo/adcolony/dc;

    move-result-object v2

    iget-object v2, v2, Lcom/jirbo/adcolony/dc;->z:Lcom/jirbo/adcolony/dy;

    iget-boolean v2, v2, Lcom/jirbo/adcolony/dy;->a:Z

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 309
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
