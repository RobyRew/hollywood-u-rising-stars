.class public final Lcom/sponsorpay/b/a;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final g:Lcom/sponsorpay/b/a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/location/Location;

.field private e:Landroid/location/Location;

.field private f:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/sponsorpay/b/a;

    invoke-direct {v0}, Lcom/sponsorpay/b/a;-><init>()V

    sput-object v0, Lcom/sponsorpay/b/a;->g:Lcom/sponsorpay/b/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sponsorpay/b/a;->b:Z

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sponsorpay/b/a;->c:Ljava/util/Set;

    .line 66
    iget-object v0, p0, Lcom/sponsorpay/b/a;->c:Ljava/util/Set;

    const-string/jumbo v1, "age"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/sponsorpay/b/a;->c:Ljava/util/Set;

    const-string/jumbo v1, "birthdate"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/sponsorpay/b/a;->c:Ljava/util/Set;

    const-string/jumbo v1, "gender"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/sponsorpay/b/a;->c:Ljava/util/Set;

    const-string/jumbo v1, "sexual_orientation"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/sponsorpay/b/a;->c:Ljava/util/Set;

    const-string/jumbo v1, "ethnicity"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/sponsorpay/b/a;->c:Ljava/util/Set;

    const-string/jumbo v1, "lat"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/sponsorpay/b/a;->c:Ljava/util/Set;

    const-string/jumbo v1, "longt"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/sponsorpay/b/a;->c:Ljava/util/Set;

    const-string/jumbo v1, "marital_status"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/sponsorpay/b/a;->c:Ljava/util/Set;

    const-string/jumbo v1, "children"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/sponsorpay/b/a;->c:Ljava/util/Set;

    const-string/jumbo v1, "annual_household_income"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/sponsorpay/b/a;->c:Ljava/util/Set;

    const-string/jumbo v1, "education"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/sponsorpay/b/a;->c:Ljava/util/Set;

    const-string/jumbo v1, "zipcode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/sponsorpay/b/a;->c:Ljava/util/Set;

    const-string/jumbo v1, "interests"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/sponsorpay/b/a;->c:Ljava/util/Set;

    const-string/jumbo v1, "iap"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/sponsorpay/b/a;->c:Ljava/util/Set;

    const-string/jumbo v1, "iap_amount"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/sponsorpay/b/a;->c:Ljava/util/Set;

    const-string/jumbo v1, "number_of_sessions"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/sponsorpay/b/a;->c:Ljava/util/Set;

    const-string/jumbo v1, "ps_time"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/sponsorpay/b/a;->c:Ljava/util/Set;

    const-string/jumbo v1, "last_session"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/sponsorpay/b/a;->c:Ljava/util/Set;

    const-string/jumbo v1, "connection"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/sponsorpay/b/a;->c:Ljava/util/Set;

    const-string/jumbo v1, "device"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/sponsorpay/b/a;->c:Ljava/util/Set;

    const-string/jumbo v1, "app_version"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 268
    sget-object v0, Lcom/sponsorpay/b/a;->g:Lcom/sponsorpay/b/a;

    iget-boolean v0, v0, Lcom/sponsorpay/b/a;->b:Z

    if-eqz v0, :cond_9

    .line 269
    const-string/jumbo v0, "SPUser"

    const-string/jumbo v1, "SPUser data has changed, recreating..."

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    sget-object v1, Lcom/sponsorpay/b/a;->g:Lcom/sponsorpay/b/a;

    .line 1294
    invoke-static {v4}, Lcom/sponsorpay/c/c;->a(Landroid/content/Context;)Lcom/sponsorpay/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/c/c;->u()Landroid/location/LocationManager;

    move-result-object v2

    .line 1295
    iget-object v0, v1, Lcom/sponsorpay/b/a;->d:Landroid/location/Location;

    if-nez v0, :cond_4

    if-eqz v2, :cond_4

    .line 1296
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 1297
    iget-object v0, v1, Lcom/sponsorpay/b/a;->f:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/sponsorpay/b/a;->f:Ljava/util/Calendar;

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1299
    :cond_0
    invoke-static {v4}, Lcom/sponsorpay/c/c;->a(Landroid/content/Context;)Lcom/sponsorpay/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/c/c;->v()Ljava/util/List;

    move-result-object v0

    .line 1300
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1301
    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 1302
    if-eqz v0, :cond_1

    .line 1303
    iget-object v5, v1, Lcom/sponsorpay/b/a;->e:Landroid/location/Location;

    if-nez v5, :cond_2

    .line 1304
    iput-object v0, v1, Lcom/sponsorpay/b/a;->e:Landroid/location/Location;

    .line 1306
    :cond_2
    iget-object v5, v1, Lcom/sponsorpay/b/a;->e:Landroid/location/Location;

    if-eqz v5, :cond_1

    iget-object v5, v1, Lcom/sponsorpay/b/a;->e:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-gez v5, :cond_1

    .line 1307
    iput-object v0, v1, Lcom/sponsorpay/b/a;->e:Landroid/location/Location;

    goto :goto_0

    .line 1311
    :cond_3
    iget-object v0, v1, Lcom/sponsorpay/b/a;->e:Landroid/location/Location;

    if-eqz v0, :cond_4

    .line 1313
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1314
    const/4 v2, 0x5

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->add(II)V

    .line 1315
    iget-object v2, v1, Lcom/sponsorpay/b/a;->e:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    .line 1316
    iget-object v0, v1, Lcom/sponsorpay/b/a;->e:Landroid/location/Location;

    invoke-direct {v1, v0}, Lcom/sponsorpay/b/a;->a(Landroid/location/Location;)V

    .line 1317
    iput-object v3, v1, Lcom/sponsorpay/b/a;->f:Ljava/util/Calendar;

    .line 1318
    iget-object v0, v1, Lcom/sponsorpay/b/a;->f:Ljava/util/Calendar;

    const/16 v1, 0xc

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 273
    :cond_4
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 275
    sget-object v0, Lcom/sponsorpay/b/a;->g:Lcom/sponsorpay/b/a;

    invoke-virtual {v0}, Lcom/sponsorpay/b/a;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 276
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 1326
    instance-of v4, v0, Ljava/util/Date;

    if-eqz v4, :cond_5

    .line 1327
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v5, "%tY/%tm/%td"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v10

    aput-object v0, v6, v11

    const/4 v7, 0x2

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 276
    :goto_2
    invoke-virtual {v2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 1328
    :cond_5
    instance-of v4, v0, [Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 1329
    const-string/jumbo v4, ","

    check-cast v0, [Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1330
    :cond_6
    instance-of v4, v0, Landroid/location/Location;

    if-eqz v4, :cond_7

    .line 1331
    check-cast v0, Landroid/location/Location;

    .line 1332
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "latitude:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    .line 1362
    invoke-static {v6, v7, v10}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v5

    .line 1332
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",longitude:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    .line 2362
    invoke-static {v6, v7, v10}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v5

    .line 1332
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",accuracy:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1335
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 279
    :cond_8
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    sget-object v1, Lcom/sponsorpay/b/a;->g:Lcom/sponsorpay/b/a;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sponsorpay/b/a;->a:Ljava/lang/String;

    .line 284
    const-string/jumbo v0, "SPUser"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "SPUSer data - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/sponsorpay/b/a;->g:Lcom/sponsorpay/b/a;

    iget-object v2, v2, Lcom/sponsorpay/b/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    sget-object v0, Lcom/sponsorpay/b/a;->g:Lcom/sponsorpay/b/a;

    iput-boolean v10, v0, Lcom/sponsorpay/b/a;->b:Z

    .line 289
    :cond_9
    sget-object v0, Lcom/sponsorpay/b/a;->g:Lcom/sponsorpay/b/a;

    iget-object v0, v0, Lcom/sponsorpay/b/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/location/Location;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 366
    if-eqz p1, :cond_0

    .line 367
    const-string/jumbo v0, "lat"

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 3362
    invoke-static {v2, v3, v4}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v1

    .line 367
    invoke-virtual {p0, v0, v1}, Lcom/sponsorpay/b/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string/jumbo v0, "longt"

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .line 4362
    invoke-static {v2, v3, v4}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v1

    .line 368
    invoke-virtual {p0, v0, v1}, Lcom/sponsorpay/b/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    :goto_0
    return-void

    .line 370
    :cond_0
    const-string/jumbo v0, "lat"

    invoke-virtual {p0, v0}, Lcom/sponsorpay/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string/jumbo v0, "longt"

    invoke-virtual {p0, v0}, Lcom/sponsorpay/b/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 344
    invoke-static {p1}, Lcom/sponsorpay/c/n;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 345
    iget-boolean v0, p0, Lcom/sponsorpay/b/a;->b:Z

    if-nez v0, :cond_1

    .line 346
    invoke-virtual {p0, p1}, Lcom/sponsorpay/b/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 347
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sponsorpay/b/a;->b:Z

    .line 349
    :cond_1
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 351
    :goto_1
    return-object v0

    .line 347
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 351
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/sponsorpay/b/a;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 356
    invoke-super {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 357
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sponsorpay/b/a;->b:Z

    .line 358
    return-object v1

    .line 357
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
