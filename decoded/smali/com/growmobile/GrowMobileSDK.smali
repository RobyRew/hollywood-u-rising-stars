.class public Lcom/growmobile/GrowMobileSDK;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/growmobile/GrowMobileSDK;

.field private static b:Ljava/lang/String;

.field private static c:J


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/util/concurrent/ScheduledExecutorService;

.field private d:I

.field private e:I

.field private f:Landroid/content/Context;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/Boolean;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/growmobile/GrowMobileSDK;->a:Lcom/growmobile/GrowMobileSDK;

    .line 71
    const-string/jumbo v0, "https://api.growmobile.com/tracking"

    sput-object v0, Lcom/growmobile/GrowMobileSDK;->b:Ljava/lang/String;

    .line 98
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/growmobile/GrowMobileSDK;->c:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput v2, p0, Lcom/growmobile/GrowMobileSDK;->d:I

    .line 104
    const/4 v0, 0x4

    iput v0, p0, Lcom/growmobile/GrowMobileSDK;->e:I

    .line 107
    iput-object v1, p0, Lcom/growmobile/GrowMobileSDK;->f:Landroid/content/Context;

    .line 108
    iput-object v1, p0, Lcom/growmobile/GrowMobileSDK;->g:Ljava/lang/String;

    .line 109
    iput-object v1, p0, Lcom/growmobile/GrowMobileSDK;->h:Ljava/lang/String;

    .line 112
    iput-object v1, p0, Lcom/growmobile/GrowMobileSDK;->i:Ljava/lang/String;

    .line 113
    iput-object v1, p0, Lcom/growmobile/GrowMobileSDK;->j:Ljava/lang/String;

    .line 114
    iput-object v1, p0, Lcom/growmobile/GrowMobileSDK;->k:Ljava/lang/String;

    .line 117
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/growmobile/GrowMobileSDK;->l:Ljava/lang/Boolean;

    .line 118
    iput-object v1, p0, Lcom/growmobile/GrowMobileSDK;->m:Ljava/lang/String;

    .line 119
    iput-object v1, p0, Lcom/growmobile/GrowMobileSDK;->n:Ljava/lang/String;

    .line 120
    iput-object v1, p0, Lcom/growmobile/GrowMobileSDK;->o:Ljava/lang/String;

    .line 122
    iput-object v1, p0, Lcom/growmobile/GrowMobileSDK;->p:Ljava/lang/String;

    .line 123
    iput-object v1, p0, Lcom/growmobile/GrowMobileSDK;->q:Ljava/lang/String;

    .line 124
    iput-object v1, p0, Lcom/growmobile/GrowMobileSDK;->r:Ljava/lang/String;

    .line 126
    iput-object v1, p0, Lcom/growmobile/GrowMobileSDK;->s:Ljava/lang/String;

    .line 127
    iput-object v1, p0, Lcom/growmobile/GrowMobileSDK;->t:Ljava/lang/String;

    .line 128
    iput-object v1, p0, Lcom/growmobile/GrowMobileSDK;->u:Ljava/lang/String;

    .line 130
    iput-object v1, p0, Lcom/growmobile/GrowMobileSDK;->v:Ljava/lang/String;

    .line 131
    iput-object v1, p0, Lcom/growmobile/GrowMobileSDK;->w:Ljava/lang/String;

    .line 132
    iput-object v1, p0, Lcom/growmobile/GrowMobileSDK;->x:Ljava/lang/String;

    .line 133
    iput-object v1, p0, Lcom/growmobile/GrowMobileSDK;->y:Ljava/lang/String;

    .line 134
    iput-object v1, p0, Lcom/growmobile/GrowMobileSDK;->z:Ljava/lang/String;

    .line 135
    iput-object v1, p0, Lcom/growmobile/GrowMobileSDK;->A:Ljava/lang/String;

    .line 137
    iput-object v1, p0, Lcom/growmobile/GrowMobileSDK;->B:Ljava/lang/String;

    .line 138
    iput-object v1, p0, Lcom/growmobile/GrowMobileSDK;->C:Ljava/lang/String;

    .line 143
    iput-object v1, p0, Lcom/growmobile/GrowMobileSDK;->D:Ljava/util/concurrent/ScheduledExecutorService;

    .line 245
    iput-object p1, p0, Lcom/growmobile/GrowMobileSDK;->f:Landroid/content/Context;

    .line 246
    iput-object p2, p0, Lcom/growmobile/GrowMobileSDK;->g:Ljava/lang/String;

    .line 247
    iput-object p3, p0, Lcom/growmobile/GrowMobileSDK;->h:Ljava/lang/String;

    .line 248
    invoke-direct {p0, p1}, Lcom/growmobile/GrowMobileSDK;->a(Landroid/content/Context;)V

    .line 249
    invoke-direct {p0}, Lcom/growmobile/GrowMobileSDK;->k()V

    .line 250
    return-void
.end method

.method static synthetic a()Lcom/growmobile/GrowMobileSDK;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/growmobile/GrowMobileSDK;->a:Lcom/growmobile/GrowMobileSDK;

    return-object v0
.end method

.method private static a(F)Ljava/lang/String;
    .locals 5

    .prologue
    .line 966
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v1, "%f"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 637
    invoke-direct {p0}, Lcom/growmobile/GrowMobileSDK;->c()V

    .line 638
    invoke-direct {p0}, Lcom/growmobile/GrowMobileSDK;->d()V

    .line 639
    invoke-direct {p0}, Lcom/growmobile/GrowMobileSDK;->e()V

    .line 641
    invoke-direct {p0}, Lcom/growmobile/GrowMobileSDK;->g()V

    .line 642
    invoke-direct {p0}, Lcom/growmobile/GrowMobileSDK;->i()V

    .line 644
    invoke-direct {p0}, Lcom/growmobile/GrowMobileSDK;->b()Ljava/lang/String;

    move-result-object v2

    .line 646
    new-instance v3, Ljava/lang/StringBuffer;

    sget-object v4, Lcom/growmobile/GrowMobileSDK;->b:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 647
    const-string/jumbo v4, "/%s?app_key=%s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v1

    iget-object v6, p0, Lcom/growmobile/GrowMobileSDK;->g:Ljava/lang/String;

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 648
    const-string/jumbo v4, "&android_id=%s&android_id_md5=%s&android_id_sha1=%s"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/growmobile/GrowMobileSDK;->i:Ljava/lang/String;

    aput-object v6, v5, v1

    iget-object v6, p0, Lcom/growmobile/GrowMobileSDK;->j:Ljava/lang/String;

    aput-object v6, v5, v0

    iget-object v6, p0, Lcom/growmobile/GrowMobileSDK;->k:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 649
    const-string/jumbo v4, "&mac=%s&mac_md5=%s&mac_sha1=%s"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/growmobile/GrowMobileSDK;->p:Ljava/lang/String;

    invoke-static {v6}, Lcom/growmobile/GrowMobileSDK;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v6, p0, Lcom/growmobile/GrowMobileSDK;->q:Ljava/lang/String;

    aput-object v6, v5, v0

    iget-object v6, p0, Lcom/growmobile/GrowMobileSDK;->r:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 650
    const-string/jumbo v4, "&imei=%s&imei_md5=%s&imei_sha1=%s"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/growmobile/GrowMobileSDK;->s:Ljava/lang/String;

    invoke-static {v6}, Lcom/growmobile/GrowMobileSDK;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v6, p0, Lcom/growmobile/GrowMobileSDK;->t:Ljava/lang/String;

    aput-object v6, v5, v0

    iget-object v6, p0, Lcom/growmobile/GrowMobileSDK;->u:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 651
    const-string/jumbo v4, "&device_ip=%s"

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/growmobile/GrowMobileSDK;->v:Ljava/lang/String;

    invoke-static {v6}, Lcom/growmobile/GrowMobileSDK;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 652
    const-string/jumbo v4, "&model=%s&system=%s"

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/growmobile/GrowMobileSDK;->x:Ljava/lang/String;

    invoke-static {v6}, Lcom/growmobile/GrowMobileSDK;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v6, p0, Lcom/growmobile/GrowMobileSDK;->w:Ljava/lang/String;

    invoke-static {v6}, Lcom/growmobile/GrowMobileSDK;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 653
    const-string/jumbo v4, "&language=%s&country=%s&locale=%s"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/growmobile/GrowMobileSDK;->z:Ljava/lang/String;

    invoke-static {v6}, Lcom/growmobile/GrowMobileSDK;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    iget-object v6, p0, Lcom/growmobile/GrowMobileSDK;->y:Ljava/lang/String;

    invoke-static {v6}, Lcom/growmobile/GrowMobileSDK;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    iget-object v6, p0, Lcom/growmobile/GrowMobileSDK;->A:Ljava/lang/String;

    invoke-static {v6}, Lcom/growmobile/GrowMobileSDK;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 654
    const-string/jumbo v4, "&signature=%s"

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 656
    iget-object v2, p0, Lcom/growmobile/GrowMobileSDK;->B:Ljava/lang/String;

    const-string/jumbo v4, "unknown"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 658
    const-string/jumbo v2, "&fb_attribution_id=%s"

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/growmobile/GrowMobileSDK;->B:Ljava/lang/String;

    invoke-static {v5}, Lcom/growmobile/GrowMobileSDK;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 661
    :cond_0
    iget-object v2, p0, Lcom/growmobile/GrowMobileSDK;->m:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 663
    const-string/jumbo v2, "&gaid=%s&gaid_md5=%s&gaid_sha1=%s&gaid_enabled=%b"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/growmobile/GrowMobileSDK;->m:Ljava/lang/String;

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/growmobile/GrowMobileSDK;->n:Ljava/lang/String;

    aput-object v5, v4, v0

    iget-object v5, p0, Lcom/growmobile/GrowMobileSDK;->o:Ljava/lang/String;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/growmobile/GrowMobileSDK;->l:Ljava/lang/Boolean;

    .line 664
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_3

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v4, v8

    .line 663
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 667
    :cond_1
    const-string/jumbo v0, "open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 669
    iget-object v0, p0, Lcom/growmobile/GrowMobileSDK;->C:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 670
    invoke-direct {p0}, Lcom/growmobile/GrowMobileSDK;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 673
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    move v0, v1

    .line 664
    goto :goto_0
.end method

.method private declared-synchronized a(I)V
    .locals 1

    .prologue
    .line 831
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/growmobile/GrowMobileSDK;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/growmobile/GrowMobileSDK;->d:I

    .line 832
    iget v0, p0, Lcom/growmobile/GrowMobileSDK;->d:I

    if-gez v0, :cond_0

    .line 833
    const/4 v0, 0x0

    iput v0, p0, Lcom/growmobile/GrowMobileSDK;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    :cond_0
    monitor-exit p0

    return-void

    .line 831
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 259
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/growmobile/GrowMobileSDK;->i:Ljava/lang/String;

    .line 262
    iget-object v0, p0, Lcom/growmobile/GrowMobileSDK;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/growmobile/GrowMobileSDK;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 264
    :cond_0
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/growmobile/GrowMobileSDK;->i:Ljava/lang/String;

    .line 265
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/growmobile/GrowMobileSDK;->j:Ljava/lang/String;

    .line 266
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/growmobile/GrowMobileSDK;->k:Ljava/lang/String;

    .line 275
    :goto_0
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/growmobile/GrowMobileSDK;->w:Ljava/lang/String;

    .line 277
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Lcom/growmobile/GrowMobileSDK;->x:Ljava/lang/String;

    .line 280
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/growmobile/GrowMobileSDK;->y:Ljava/lang/String;

    .line 281
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/growmobile/GrowMobileSDK;->z:Ljava/lang/String;

    .line 282
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/growmobile/GrowMobileSDK;->A:Ljava/lang/String;

    .line 288
    const/4 v0, 0x2

    new-instance v1, Lcom/growmobile/a;

    invoke-direct {v1, p0}, Lcom/growmobile/a;-><init>(Lcom/growmobile/GrowMobileSDK;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/growmobile/GrowMobileSDK;->D:Ljava/util/concurrent/ScheduledExecutorService;

    .line 303
    :goto_1
    return-void

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/growmobile/GrowMobileSDK;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/growmobile/GrowMobileSDK;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/growmobile/GrowMobileSDK;->j:Ljava/lang/String;

    .line 271
    iget-object v0, p0, Lcom/growmobile/GrowMobileSDK;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/growmobile/GrowMobileSDK;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/growmobile/GrowMobileSDK;->k:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error initializing parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/growmobile/d;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/growmobile/GrowMobileSDK;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/growmobile/GrowMobileSDK;->f()V

    return-void
.end method

.method static synthetic a(Lcom/growmobile/GrowMobileSDK;I)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/growmobile/GrowMobileSDK;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/growmobile/GrowMobileSDK;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/growmobile/GrowMobileSDK;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/growmobile/GrowMobileSDK;Z)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/growmobile/GrowMobileSDK;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 724
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/growmobile/GrowMobileSDK;->a(I)V

    .line 727
    iget-object v0, p0, Lcom/growmobile/GrowMobileSDK;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 729
    const/4 v0, 0x5

    invoke-direct {p0, p1, p2, v0}, Lcom/growmobile/GrowMobileSDK;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 735
    :goto_0
    return-void

    .line 733
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/growmobile/GrowMobileSDK;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 742
    :try_start_0
    iget-object v0, p0, Lcom/growmobile/GrowMobileSDK;->D:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/growmobile/e;

    invoke-direct {v1, p0, p1, p2}, Lcom/growmobile/e;-><init>(Lcom/growmobile/GrowMobileSDK;Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v2, p3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    :goto_0
    return-void

    .line 744
    :catch_0
    move-exception v0

    .line 746
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleRequest failed with exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/growmobile/d;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized a(Z)V
    .locals 2

    .prologue
    const/16 v1, 0x200

    .line 838
    monitor-enter p0

    if-eqz p1, :cond_1

    .line 839
    const/4 v0, 0x4

    :try_start_0
    iput v0, p0, Lcom/growmobile/GrowMobileSDK;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 843
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/growmobile/GrowMobileSDK;->e:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/growmobile/GrowMobileSDK;->e:I

    .line 844
    iget v0, p0, Lcom/growmobile/GrowMobileSDK;->e:I

    if-le v0, v1, :cond_0

    .line 845
    const/16 v0, 0x200

    iput v0, p0, Lcom/growmobile/GrowMobileSDK;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 838
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/growmobile/GrowMobileSDK;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/growmobile/GrowMobileSDK;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/growmobile/GrowMobileSDK;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/growmobile/GrowMobileSDK;->d:I

    return v0
.end method

.method private b()Ljava/lang/String;
    .locals 5

    .prologue
    .line 308
    const/4 v0, 0x0

    .line 313
    :try_start_0
    const-string/jumbo v1, "%s:%s:%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/growmobile/GrowMobileSDK;->g:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/growmobile/GrowMobileSDK;->i:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/growmobile/GrowMobileSDK;->h:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/growmobile/GrowMobileSDK;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 333
    :goto_0
    return-object v0

    .line 328
    :catch_0
    move-exception v1

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error computing signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/growmobile/d;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 917
    const-string/jumbo v0, "SHA-1"

    invoke-static {v0, p0}, Lcom/growmobile/GrowMobileSDK;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 852
    const/4 v1, 0x1

    .line 860
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/growmobile/GrowMobileSDK;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 861
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invokeUrl requestUrl is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/growmobile/d;->a(Ljava/lang/String;)V

    .line 863
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 864
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 865
    const v3, 0xea60

    :try_start_1
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 866
    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 867
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 869
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 871
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 872
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 873
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 875
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 884
    :catch_0
    move-exception v1

    move-object v2, v3

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    .line 886
    :goto_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invokeUrl failed with exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/growmobile/d;->b(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 887
    const/4 v0, 0x0

    .line 894
    if-eqz v2, :cond_0

    .line 895
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 903
    :cond_0
    :goto_2
    if-eqz v1, :cond_1

    .line 904
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 907
    :cond_1
    :goto_3
    return v0

    .line 877
    :cond_2
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 879
    const-string/jumbo v5, "--------------------"

    invoke-static {v5}, Lcom/growmobile/d;->a(Ljava/lang/String;)V

    .line 880
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "response code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/growmobile/d;->a(Ljava/lang/String;)V

    .line 881
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/growmobile/d;->a(Ljava/lang/String;)V

    .line 882
    const-string/jumbo v2, "--------------------"

    invoke-static {v2}, Lcom/growmobile/d;->a(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 894
    if-eqz v3, :cond_3

    .line 895
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 903
    :cond_3
    :goto_4
    if-eqz v0, :cond_6

    .line 904
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move v0, v1

    goto :goto_3

    .line 897
    :catch_1
    move-exception v2

    .line 899
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Closing BufferedReader failed with exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/growmobile/d;->b(Ljava/lang/String;)V

    goto :goto_4

    .line 897
    :catch_2
    move-exception v2

    .line 899
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Closing BufferedReader failed with exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/growmobile/d;->b(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 892
    :catchall_0
    move-exception v0

    move-object v3, v2

    .line 894
    :goto_5
    if-eqz v3, :cond_4

    .line 895
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 903
    :cond_4
    :goto_6
    if-eqz v2, :cond_5

    .line 904
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw v0

    .line 897
    :catch_3
    move-exception v1

    .line 899
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Closing BufferedReader failed with exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/growmobile/d;->b(Ljava/lang/String;)V

    goto :goto_6

    .line 892
    :catchall_1
    move-exception v1

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    goto :goto_5

    .line 884
    :catch_4
    move-exception v0

    move-object v1, v2

    goto/16 :goto_1

    :catch_5
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto/16 :goto_1

    :cond_6
    move v0, v1

    goto/16 :goto_3
.end method

.method static synthetic c(Lcom/growmobile/GrowMobileSDK;)I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/growmobile/GrowMobileSDK;->e:I

    return v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 923
    const-string/jumbo v0, "MD5"

    invoke-static {v0, p0}, Lcom/growmobile/GrowMobileSDK;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 929
    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 932
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 933
    const-string/jumbo v2, "iso-8859-1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 934
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 937
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move v4, v1

    .line 938
    :goto_0
    array-length v0, v5

    if-ge v4, v0, :cond_1

    .line 940
    aget-byte v0, v5, v4

    ushr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    move v2, v0

    move v0, v1

    .line 944
    :goto_1
    if-ltz v2, :cond_0

    const/16 v3, 0x9

    if-gt v2, v3, :cond_0

    .line 945
    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 948
    :goto_2
    aget-byte v2, v5, v4

    and-int/lit8 v3, v2, 0xf

    .line 950
    add-int/lit8 v2, v0, 0x1

    const/4 v7, 0x1

    if-lt v0, v7, :cond_2

    .line 938
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 947
    :cond_0
    add-int/lit8 v2, v2, -0xa

    add-int/lit8 v2, v2, 0x61

    int-to-char v2, v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 955
    :catch_0
    move-exception v0

    .line 957
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hashAlgorithm failed with exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/growmobile/d;->b(Ljava/lang/String;)V

    .line 960
    const-string/jumbo v0, "unknown"

    :goto_3
    return-object v0

    .line 953
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_3

    :cond_2
    move v0, v2

    move v2, v3

    goto :goto_1
.end method

.method private declared-synchronized c()V
    .locals 4

    .prologue
    .line 338
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/growmobile/GrowMobileSDK;->v:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    .line 343
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 344
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/growmobile/GrowMobileSDK;->v:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 346
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 347
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    .line 348
    :cond_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 351
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_1

    .line 353
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/growmobile/GrowMobileSDK;->v:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    .line 361
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error getting ip address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/growmobile/d;->b(Ljava/lang/String;)V

    .line 364
    :cond_2
    iget-object v0, p0, Lcom/growmobile/GrowMobileSDK;->v:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 366
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/growmobile/GrowMobileSDK;->v:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 369
    :cond_3
    monitor-exit p0

    return-void

    .line 338
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 974
    if-nez p0, :cond_0

    .line 976
    :try_start_0
    const-string/jumbo p0, ""

    .line 978
    :cond_0
    const-string/jumbo v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 985
    :goto_0
    return-object v0

    .line 980
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p0

    .line 982
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "urlEncode failed with exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/growmobile/d;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized d()V
    .locals 1

    .prologue
    .line 373
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/growmobile/GrowMobileSDK;->p:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/growmobile/GrowMobileSDK;->p:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 401
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/growmobile/GrowMobileSDK;->p:Ljava/lang/String;

    .line 402
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/growmobile/GrowMobileSDK;->q:Ljava/lang/String;

    .line 403
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/growmobile/GrowMobileSDK;->r:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 407
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/growmobile/GrowMobileSDK;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/growmobile/GrowMobileSDK;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/growmobile/GrowMobileSDK;->q:Ljava/lang/String;

    .line 408
    iget-object v0, p0, Lcom/growmobile/GrowMobileSDK;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/growmobile/GrowMobileSDK;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/growmobile/GrowMobileSDK;->r:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e()V
    .locals 1

    .prologue
    .line 415
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/growmobile/GrowMobileSDK;->s:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/growmobile/GrowMobileSDK;->s:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 448
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/growmobile/GrowMobileSDK;->s:Ljava/lang/String;

    .line 449
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/growmobile/GrowMobileSDK;->t:Ljava/lang/String;

    .line 450
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/growmobile/GrowMobileSDK;->u:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 454
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/growmobile/GrowMobileSDK;->s:Ljava/lang/String;

    invoke-static {v0}, Lcom/growmobile/GrowMobileSDK;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/growmobile/GrowMobileSDK;->t:Ljava/lang/String;

    .line 455
    iget-object v0, p0, Lcom/growmobile/GrowMobileSDK;->s:Ljava/lang/String;

    invoke-static {v0}, Lcom/growmobile/GrowMobileSDK;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/growmobile/GrowMobileSDK;->u:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 415
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static enableLogging(Z)V
    .locals 0

    .prologue
    .line 167
    invoke-static {p0}, Lcom/growmobile/d;->a(Z)V

    .line 168
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 463
    iget-object v0, p0, Lcom/growmobile/GrowMobileSDK;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 468
    :try_start_0
    iget-object v0, p0, Lcom/growmobile/GrowMobileSDK;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 469
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/growmobile/GrowMobileSDK;->m:Ljava/lang/String;

    .line 470
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/growmobile/GrowMobileSDK;->l:Ljava/lang/Boolean;

    .line 471
    const-string/jumbo v0, "Google Advertising Id is %s with LAT as %b"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/growmobile/GrowMobileSDK;->m:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/growmobile/GrowMobileSDK;->l:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/growmobile/d;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/c; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/d; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 494
    :goto_0
    iget-object v0, p0, Lcom/growmobile/GrowMobileSDK;->m:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 496
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/growmobile/GrowMobileSDK;->m:Ljava/lang/String;

    .line 497
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/growmobile/GrowMobileSDK;->n:Ljava/lang/String;

    .line 498
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/growmobile/GrowMobileSDK;->o:Ljava/lang/String;

    .line 506
    :cond_0
    :goto_1
    return-void

    .line 473
    :catch_0
    move-exception v0

    .line 477
    const-string/jumbo v0, "Error getting Advertising Id: Unrecoverable error connecting to Google Play services"

    invoke-static {v0}, Lcom/growmobile/d;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 479
    :catch_1
    move-exception v0

    .line 482
    const-string/jumbo v0, "Error getting Advertising Id: Google Play services is not available entirely"

    invoke-static {v0}, Lcom/growmobile/d;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 484
    :catch_2
    move-exception v0

    .line 487
    const-string/jumbo v0, "Error getting Advertising Id: Encountered a recoverable error connecting to Google Play services."

    invoke-static {v0}, Lcom/growmobile/d;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 489
    :catch_3
    move-exception v0

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error getting Advertising Id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/growmobile/d;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/growmobile/GrowMobileSDK;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/growmobile/GrowMobileSDK;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/growmobile/GrowMobileSDK;->n:Ljava/lang/String;

    .line 503
    iget-object v0, p0, Lcom/growmobile/GrowMobileSDK;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/growmobile/GrowMobileSDK;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/growmobile/GrowMobileSDK;->o:Ljava/lang/String;

    goto :goto_1
.end method

.method private declared-synchronized g()V
    .locals 7

    .prologue
    .line 546
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/growmobile/GrowMobileSDK;->B:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 550
    :try_start_1
    iget-object v0, p0, Lcom/growmobile/GrowMobileSDK;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 551
    const-string/jumbo v1, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 552
    const-string/jumbo v6, "aid"

    .line 553
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v6, v2, v3

    .line 554
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 556
    if-nez v0, :cond_1

    .line 574
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/growmobile/GrowMobileSDK;->B:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 576
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/growmobile/GrowMobileSDK;->B:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 579
    :cond_0
    monitor-exit p0

    return-void

    .line 559
    :cond_1
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2

    .line 561
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 569
    :catch_0
    move-exception v0

    .line 571
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error getting fb attribution id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/growmobile/d;->b(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 546
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 565
    :cond_2
    :try_start_5
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/growmobile/GrowMobileSDK;->B:Ljava/lang/String;

    .line 566
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method public static getDeviceInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    sget-object v0, Lcom/growmobile/GrowMobileSDK;->a:Lcom/growmobile/GrowMobileSDK;

    invoke-direct {v0}, Lcom/growmobile/GrowMobileSDK;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 584
    const-string/jumbo v0, ""

    .line 586
    iget-object v1, p0, Lcom/growmobile/GrowMobileSDK;->f:Landroid/content/Context;

    const-string/jumbo v2, "grow_mobile_install_receiver"

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 588
    const-string/jumbo v2, "click_id"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 589
    const-string/jumbo v3, "partner_req_id"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 591
    if-eqz v2, :cond_0

    .line 593
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "&click_id=%s"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2}, Lcom/growmobile/GrowMobileSDK;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 596
    :cond_0
    if-eqz v1, :cond_1

    .line 598
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "&install_referrer=%s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1}, Lcom/growmobile/GrowMobileSDK;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 601
    :cond_1
    return-object v0
.end method

.method private declared-synchronized i()V
    .locals 6

    .prologue
    .line 606
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/growmobile/GrowMobileSDK;->C:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 610
    :try_start_1
    iget-object v0, p0, Lcom/growmobile/GrowMobileSDK;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 611
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 612
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 613
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 615
    const-string/jumbo v2, "&screen_size=%s&screen_format=%s&screen_density=%s&screen_width=%s&screen_height=%s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 616
    invoke-static {v0}, Lcom/growmobile/c;->a(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 617
    invoke-static {v0}, Lcom/growmobile/c;->b(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    .line 618
    invoke-static {v1}, Lcom/growmobile/c;->a(Landroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x3

    .line 619
    invoke-static {v1}, Lcom/growmobile/c;->b(Landroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x4

    .line 620
    invoke-static {v1}, Lcom/growmobile/c;->c(Landroid/util/DisplayMetrics;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    .line 615
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/growmobile/GrowMobileSDK;->C:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 627
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/growmobile/GrowMobileSDK;->C:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 629
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/growmobile/GrowMobileSDK;->C:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 632
    :cond_0
    monitor-exit p0

    return-void

    .line 622
    :catch_0
    move-exception v0

    .line 624
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error getting screen params url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/growmobile/d;->b(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 606
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/growmobile/GrowMobileSDK;->a:Lcom/growmobile/GrowMobileSDK;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Lcom/growmobile/GrowMobileSDK;

    invoke-direct {v0, p0, p1, p2}, Lcom/growmobile/GrowMobileSDK;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/growmobile/GrowMobileSDK;->a:Lcom/growmobile/GrowMobileSDK;

    .line 162
    :cond_0
    return-void
.end method

.method private j()Ljava/lang/String;
    .locals 3

    .prologue
    .line 679
    invoke-direct {p0}, Lcom/growmobile/GrowMobileSDK;->c()V

    .line 680
    invoke-direct {p0}, Lcom/growmobile/GrowMobileSDK;->d()V

    .line 681
    invoke-direct {p0}, Lcom/growmobile/GrowMobileSDK;->e()V

    .line 682
    invoke-direct {p0}, Lcom/growmobile/GrowMobileSDK;->g()V

    .line 683
    invoke-direct {p0}, Lcom/growmobile/GrowMobileSDK;->i()V

    .line 685
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 686
    const-string/jumbo v1, "ANDROID_ID: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/growmobile/GrowMobileSDK;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 687
    const-string/jumbo v1, "MAC ADDRESS: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/growmobile/GrowMobileSDK;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 688
    const-string/jumbo v1, "DEVICE_ID: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/growmobile/GrowMobileSDK;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 689
    const-string/jumbo v1, "DEVICE_IP: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/growmobile/GrowMobileSDK;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 690
    const-string/jumbo v1, "DEVICE_OS_VERSION: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/growmobile/GrowMobileSDK;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 691
    const-string/jumbo v1, "DEVICE_MODEL: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/growmobile/GrowMobileSDK;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 692
    const-string/jumbo v1, "DEVICE_COUNTRY_CODE: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/growmobile/GrowMobileSDK;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 693
    const-string/jumbo v1, "DEVICE_LANGUAGE: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/growmobile/GrowMobileSDK;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 694
    const-string/jumbo v1, "DEVICE_LOCALE: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/growmobile/GrowMobileSDK;->A:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 695
    const-string/jumbo v1, "FB_ATTRIBUTION_ID: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/growmobile/GrowMobileSDK;->B:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 696
    const-string/jumbo v1, "SCREEN_PARAMS_URL: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/growmobile/GrowMobileSDK;->C:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 697
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/growmobile/d;->c(Ljava/lang/String;)V

    .line 699
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private k()V
    .locals 5

    .prologue
    .line 706
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/growmobile/b;

    invoke-direct {v1, p0}, Lcom/growmobile/b;-><init>(Lcom/growmobile/GrowMobileSDK;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 713
    iget-object v1, p0, Lcom/growmobile/GrowMobileSDK;->D:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 719
    :goto_0
    return-void

    .line 715
    :catch_0
    move-exception v0

    .line 717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleGetAdvertisingId failed with exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/growmobile/d;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static reportAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 194
    const-string/jumbo v0, "&key=%s&value=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/growmobile/GrowMobileSDK;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/growmobile/GrowMobileSDK;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 195
    sget-object v1, Lcom/growmobile/GrowMobileSDK;->a:Lcom/growmobile/GrowMobileSDK;

    const-string/jumbo v2, "action"

    invoke-direct {v1, v2, v0}, Lcom/growmobile/GrowMobileSDK;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public static reportAdView(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 218
    const-string/jumbo v0, "&ad_network=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/growmobile/GrowMobileSDK;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 219
    sget-object v1, Lcom/growmobile/GrowMobileSDK;->a:Lcom/growmobile/GrowMobileSDK;

    const-string/jumbo v2, "ad_view"

    invoke-direct {v1, v2, v0}, Lcom/growmobile/GrowMobileSDK;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public static reportInAppPurchase(Ljava/lang/String;F)V
    .locals 4

    .prologue
    .line 206
    const-string/jumbo v0, "&currency=%s&amount=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/growmobile/GrowMobileSDK;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/growmobile/GrowMobileSDK;->a(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 207
    sget-object v1, Lcom/growmobile/GrowMobileSDK;->a:Lcom/growmobile/GrowMobileSDK;

    const-string/jumbo v2, "in_app_purchase"

    invoke-direct {v1, v2, v0}, Lcom/growmobile/GrowMobileSDK;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public static reportOfferWall(FLjava/lang/String;)V
    .locals 4

    .prologue
    .line 229
    const-string/jumbo v0, "&usd_amount=%s&ad_network=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/growmobile/GrowMobileSDK;->a(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/growmobile/GrowMobileSDK;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 230
    sget-object v1, Lcom/growmobile/GrowMobileSDK;->a:Lcom/growmobile/GrowMobileSDK;

    const-string/jumbo v2, "offer_wall"

    invoke-direct {v1, v2, v0}, Lcom/growmobile/GrowMobileSDK;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public static reportOpen()V
    .locals 6

    .prologue
    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 176
    sget-wide v2, Lcom/growmobile/GrowMobileSDK;->c:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    sget-wide v2, Lcom/growmobile/GrowMobileSDK;->c:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x493e0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 178
    :cond_0
    sget-object v2, Lcom/growmobile/GrowMobileSDK;->a:Lcom/growmobile/GrowMobileSDK;

    const-string/jumbo v3, "open"

    const-string/jumbo v4, ""

    invoke-direct {v2, v3, v4}, Lcom/growmobile/GrowMobileSDK;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    sput-wide v0, Lcom/growmobile/GrowMobileSDK;->c:J

    .line 185
    :goto_0
    return-void

    .line 183
    :cond_1
    const-string/jumbo v0, "Already called"

    invoke-static {v0}, Lcom/growmobile/d;->c(Ljava/lang/String;)V

    goto :goto_0
.end method
