.class public Lcom/sponsorpay/c/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lcom/sponsorpay/a/a;

.field private k:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/sponsorpay/a/a;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-boolean v1, p0, Lcom/sponsorpay/c/o;->d:Z

    .line 175
    iput-boolean v1, p0, Lcom/sponsorpay/c/o;->e:Z

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sponsorpay/c/o;->f:Z

    .line 179
    iput-boolean v1, p0, Lcom/sponsorpay/c/o;->g:Z

    .line 181
    iput-boolean v1, p0, Lcom/sponsorpay/c/o;->h:Z

    .line 183
    iput-boolean v1, p0, Lcom/sponsorpay/c/o;->i:Z

    .line 190
    iput-object p1, p0, Lcom/sponsorpay/c/o;->a:Ljava/lang/String;

    .line 191
    iput-object p2, p0, Lcom/sponsorpay/c/o;->j:Lcom/sponsorpay/a/a;

    .line 192
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/sponsorpay/a/a;)Lcom/sponsorpay/c/o;
    .locals 1

    .prologue
    .line 378
    new-instance v0, Lcom/sponsorpay/c/o;

    invoke-direct {v0, p0, p1}, Lcom/sponsorpay/c/o;-><init>(Ljava/lang/String;Lcom/sponsorpay/a/a;)V

    return-object v0
.end method

.method public static a([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "SponsorPay SDK: When specifying Custom Parameters using two arrays of Keys and Values, both must have the same length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    array-length v0, p0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 151
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 152
    aget-object v2, p0, v0

    .line 153
    aget-object v3, p1, v0

    .line 155
    invoke-static {v2}, Lcom/sponsorpay/c/n;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Lcom/sponsorpay/c/n;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 156
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "SponsorPay SDK: When specifying Custom Parameters using two arrays of Keys and Values, none of their elements can be empty or null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_2
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_3
    return-object v1
.end method

.method public static a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    if-eqz p0, :cond_1

    .line 121
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 123
    invoke-static {v0}, Lcom/sponsorpay/c/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "SponsorPay SDK: Custom Parameters cannot have an empty or null Key or Value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_1
    return-void
.end method

.method private e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    iget-object v0, p0, Lcom/sponsorpay/c/o;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sponsorpay/c/o;->c:Ljava/util/Map;

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/sponsorpay/c/o;->c:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/sponsorpay/c/o;
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sponsorpay/c/o;->d:Z

    .line 210
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/sponsorpay/c/o;
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/sponsorpay/c/o;->k:Ljava/lang/String;

    .line 225
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/sponsorpay/c/o;
    .locals 1

    .prologue
    .line 202
    invoke-static {p1}, Lcom/sponsorpay/c/n;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-direct {p0}, Lcom/sponsorpay/c/o;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_0
    return-object p0
.end method

.method public b()Lcom/sponsorpay/c/o;
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 234
    iput-boolean v0, p0, Lcom/sponsorpay/c/o;->h:Z

    .line 236
    iput-boolean v0, p0, Lcom/sponsorpay/c/o;->g:Z

    .line 237
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/sponsorpay/c/o;
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/sponsorpay/c/o;->b:Ljava/lang/String;

    .line 383
    return-object p0
.end method

.method public b(Ljava/util/Map;)Lcom/sponsorpay/c/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sponsorpay/c/o;"
        }
    .end annotation

    .prologue
    .line 195
    if-eqz p1, :cond_0

    .line 196
    invoke-direct {p0}, Lcom/sponsorpay/c/o;->e()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 198
    :cond_0
    return-object p0
.end method

.method public c()Lcom/sponsorpay/c/o;
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sponsorpay/c/o;->i:Z

    .line 242
    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 8

    .prologue
    .line 253
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 255
    invoke-static {}, Lcom/sponsorpay/c/m;->a()Ljava/util/Map;

    move-result-object v0

    .line 256
    iget-object v1, p0, Lcom/sponsorpay/c/o;->c:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/sponsorpay/c/o;->c:Ljava/util/Map;

    invoke-static {v1}, Lcom/sponsorpay/c/o;->a(Ljava/util/Map;)V

    .line 258
    iget-object v1, p0, Lcom/sponsorpay/c/o;->c:Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 261
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 262
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 265
    :cond_1
    iget-boolean v0, p0, Lcom/sponsorpay/c/o;->f:Z

    if-eqz v0, :cond_2

    .line 266
    const-string/jumbo v0, "uid"

    iget-object v1, p0, Lcom/sponsorpay/c/o;->j:Lcom/sponsorpay/a/a;

    invoke-virtual {v1}, Lcom/sponsorpay/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sponsorpay/c/c;->a(Landroid/content/Context;)Lcom/sponsorpay/c/c;

    move-result-object v0

    .line 271
    const-string/jumbo v1, "sdk_version"

    sget-object v3, Lcom/sponsorpay/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string/jumbo v1, "appid"

    iget-object v3, p0, Lcom/sponsorpay/c/o;->j:Lcom/sponsorpay/a/a;

    invoke-virtual {v3}, Lcom/sponsorpay/a/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string/jumbo v1, "platform"

    const-string/jumbo v3, "android"

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string/jumbo v1, "client"

    const-string/jumbo v3, "sdk"

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string/jumbo v1, "os_version"

    invoke-virtual {v0}, Lcom/sponsorpay/c/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    const-string/jumbo v1, "phone_version"

    invoke-virtual {v0}, Lcom/sponsorpay/c/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string/jumbo v1, "language"

    invoke-virtual {v0}, Lcom/sponsorpay/c/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string/jumbo v1, "carrier_name"

    invoke-virtual {v0}, Lcom/sponsorpay/c/c;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string/jumbo v1, "carrier_country"

    invoke-virtual {v0}, Lcom/sponsorpay/c/c;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string/jumbo v1, "network_connection_type"

    invoke-virtual {v0}, Lcom/sponsorpay/c/c;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    const-string/jumbo v1, "manufacturer"

    invoke-virtual {v0}, Lcom/sponsorpay/c/c;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string/jumbo v1, "app_bundle_name"

    invoke-virtual {v0}, Lcom/sponsorpay/c/c;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string/jumbo v1, "app_version"

    invoke-virtual {v0}, Lcom/sponsorpay/c/c;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v1, p0, Lcom/sponsorpay/c/o;->k:Ljava/lang/String;

    invoke-static {v1}, Lcom/sponsorpay/c/n;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 291
    const-string/jumbo v1, "currency"

    iget-object v3, p0, Lcom/sponsorpay/c/o;->k:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    :cond_3
    iget-boolean v1, p0, Lcom/sponsorpay/c/o;->d:Z

    if-eqz v1, :cond_4

    .line 295
    const-string/jumbo v1, "screen_width"

    invoke-virtual {v0}, Lcom/sponsorpay/c/c;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string/jumbo v1, "screen_height"

    invoke-virtual {v0}, Lcom/sponsorpay/c/c;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string/jumbo v1, "screen_density_x"

    invoke-virtual {v0}, Lcom/sponsorpay/c/c;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string/jumbo v1, "screen_density_y"

    invoke-virtual {v0}, Lcom/sponsorpay/c/c;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string/jumbo v1, "screen_density_category"

    invoke-virtual {v0}, Lcom/sponsorpay/c/c;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    :cond_4
    iget-boolean v1, p0, Lcom/sponsorpay/c/o;->e:Z

    if-eqz v1, :cond_5

    .line 303
    const-string/jumbo v1, "orientation"

    invoke-virtual {v0}, Lcom/sponsorpay/c/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    :cond_5
    iget-boolean v1, p0, Lcom/sponsorpay/c/o;->g:Z

    if-eqz v1, :cond_6

    .line 307
    const-string/jumbo v1, "timestamp"

    .line 1361
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 307
    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    :cond_6
    invoke-virtual {v0}, Lcom/sponsorpay/c/c;->d()Ljava/lang/String;

    move-result-object v1

    .line 311
    invoke-static {v1}, Lcom/sponsorpay/c/n;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 312
    const-string/jumbo v3, "google_ad_id"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    const-string/jumbo v1, "google_ad_id_limited_tracking_enabled"

    invoke-virtual {v0}, Lcom/sponsorpay/c/c;->e()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    :goto_0
    iget-object v0, p0, Lcom/sponsorpay/c/o;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 322
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 323
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 315
    :cond_7
    const-string/jumbo v0, "google_ad_id"

    const-string/jumbo v1, ""

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const-string/jumbo v0, "google_ad_id_limited_tracking_enabled"

    const-string/jumbo v1, ""

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 326
    :cond_8
    iget-boolean v0, p0, Lcom/sponsorpay/c/o;->h:Z

    if-eqz v0, :cond_9

    .line 327
    iget-object v0, p0, Lcom/sponsorpay/c/o;->j:Lcom/sponsorpay/a/a;

    invoke-virtual {v0}, Lcom/sponsorpay/a/a;->d()Ljava/lang/String;

    move-result-object v0

    .line 328
    invoke-static {v0}, Lcom/sponsorpay/c/n;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 329
    const-string/jumbo v1, "signature"

    invoke-static {v2, v0}, Lcom/sponsorpay/c/h;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 336
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/sponsorpay/c/o;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/sponsorpay/c/n;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 337
    const-string/jumbo v0, "request_id"

    iget-object v1, p0, Lcom/sponsorpay/c/o;->b:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 342
    :cond_a
    :goto_3
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 344
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 332
    :cond_b
    const-string/jumbo v0, "UrlBuilder"

    const-string/jumbo v1, "It was impossible to add the signature, the SecretKey has not been provided"

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 338
    :cond_c
    iget-boolean v0, p0, Lcom/sponsorpay/c/o;->i:Z

    if-eqz v0, :cond_a

    .line 339
    const-string/jumbo v0, "request_id"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_3
.end method
