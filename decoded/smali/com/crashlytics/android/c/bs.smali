.class Lcom/crashlytics/android/c/bs;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/crashlytics/android/c/a/a/e;

.field private static final b:[Lcom/crashlytics/android/c/cc;

.field private static final c:[Lcom/crashlytics/android/c/cf;

.field private static final d:[Lcom/crashlytics/android/c/bz;

.field private static final e:[Lcom/crashlytics/android/c/bu;

.field private static final f:[Lcom/crashlytics/android/c/bv;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 27
    new-instance v0, Lcom/crashlytics/android/c/a/a/e;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    const-wide/16 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/crashlytics/android/c/a/a/e;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    sput-object v0, Lcom/crashlytics/android/c/bs;->a:Lcom/crashlytics/android/c/a/a/e;

    .line 29
    new-array v0, v3, [Lcom/crashlytics/android/c/cc;

    sput-object v0, Lcom/crashlytics/android/c/bs;->b:[Lcom/crashlytics/android/c/cc;

    .line 30
    new-array v0, v3, [Lcom/crashlytics/android/c/cf;

    sput-object v0, Lcom/crashlytics/android/c/bs;->c:[Lcom/crashlytics/android/c/cf;

    .line 31
    new-array v0, v3, [Lcom/crashlytics/android/c/bz;

    sput-object v0, Lcom/crashlytics/android/c/bs;->d:[Lcom/crashlytics/android/c/bz;

    .line 32
    new-array v0, v3, [Lcom/crashlytics/android/c/bu;

    sput-object v0, Lcom/crashlytics/android/c/bs;->e:[Lcom/crashlytics/android/c/bu;

    .line 34
    new-array v0, v3, [Lcom/crashlytics/android/c/bv;

    sput-object v0, Lcom/crashlytics/android/c/bs;->f:[Lcom/crashlytics/android/c/bv;

    return-void
.end method

.method private static a(Lcom/crashlytics/android/c/a/a/d;Lcom/crashlytics/android/c/bk;Ljava/util/Map;)Lcom/crashlytics/android/c/bx;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crashlytics/android/c/a/a/d;",
            "Lcom/crashlytics/android/c/bk;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/crashlytics/android/c/bx;"
        }
    .end annotation

    .prologue
    .line 501
    iget-object v0, p0, Lcom/crashlytics/android/c/a/a/d;->b:Lcom/crashlytics/android/c/a/a/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/crashlytics/android/c/a/a/d;->b:Lcom/crashlytics/android/c/a/a/e;

    .line 503
    :goto_0
    new-instance v1, Lcom/crashlytics/android/c/ce;

    invoke-direct {v1, v0}, Lcom/crashlytics/android/c/ce;-><init>(Lcom/crashlytics/android/c/a/a/e;)V

    .line 505
    iget-object v0, p0, Lcom/crashlytics/android/c/a/a/d;->c:[Lcom/crashlytics/android/c/a/a/f;

    invoke-static {v0}, Lcom/crashlytics/android/c/bs;->a([Lcom/crashlytics/android/c/a/a/f;)Lcom/crashlytics/android/c/cd;

    move-result-object v0

    .line 506
    iget-object v2, p0, Lcom/crashlytics/android/c/a/a/d;->d:[Lcom/crashlytics/android/c/a/a/a;

    invoke-static {v2}, Lcom/crashlytics/android/c/bs;->a([Lcom/crashlytics/android/c/a/a/a;)Lcom/crashlytics/android/c/cd;

    move-result-object v2

    .line 509
    new-instance v3, Lcom/crashlytics/android/c/by;

    invoke-direct {v3, v1, v0, v2}, Lcom/crashlytics/android/c/by;-><init>(Lcom/crashlytics/android/c/ce;Lcom/crashlytics/android/c/cd;Lcom/crashlytics/android/c/cd;)V

    .line 511
    iget-object v0, p0, Lcom/crashlytics/android/c/a/a/d;->e:[Lcom/crashlytics/android/c/a/a/b;

    invoke-static {v0, p2}, Lcom/crashlytics/android/c/bs;->a([Lcom/crashlytics/android/c/a/a/b;Ljava/util/Map;)[Lcom/crashlytics/android/c/a/a/b;

    move-result-object v0

    invoke-static {v0}, Lcom/crashlytics/android/c/bs;->a([Lcom/crashlytics/android/c/a/a/b;)Lcom/crashlytics/android/c/cd;

    move-result-object v0

    .line 515
    new-instance v1, Lcom/crashlytics/android/c/bt;

    invoke-direct {v1, v3, v0}, Lcom/crashlytics/android/c/bt;-><init>(Lcom/crashlytics/android/c/by;Lcom/crashlytics/android/c/cd;)V

    .line 517
    iget-object v0, p0, Lcom/crashlytics/android/c/a/a/d;->f:Lcom/crashlytics/android/c/a/a/c;

    invoke-static {v0}, Lcom/crashlytics/android/c/bs;->a(Lcom/crashlytics/android/c/a/a/c;)Lcom/crashlytics/android/c/cc;

    move-result-object v2

    .line 519
    invoke-virtual {p1}, Lcom/crashlytics/android/c/bk;->a()Lcom/crashlytics/android/c/b;

    move-result-object v3

    .line 521
    if-nez v3, :cond_0

    .line 522
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v0

    const-string/jumbo v4, "CrashlyticsCore"

    const-string/jumbo v5, "No log data to include with this event."

    invoke-interface {v0, v4, v5}, Lb/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :cond_0
    invoke-virtual {p1}, Lcom/crashlytics/android/c/bk;->b()V

    .line 528
    if-eqz v3, :cond_2

    new-instance v0, Lcom/crashlytics/android/c/ca;

    invoke-direct {v0, v3}, Lcom/crashlytics/android/c/ca;-><init>(Lcom/crashlytics/android/c/b;)V

    .line 531
    :goto_1
    new-instance v3, Lcom/crashlytics/android/c/bx;

    iget-wide v4, p0, Lcom/crashlytics/android/c/a/a/d;->a:J

    const-string/jumbo v6, "ndk-crash"

    const/4 v7, 0x3

    new-array v7, v7, [Lcom/crashlytics/android/c/cc;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v1, 0x1

    aput-object v2, v7, v1

    const/4 v1, 0x2

    aput-object v0, v7, v1

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/crashlytics/android/c/bx;-><init>(JLjava/lang/String;[Lcom/crashlytics/android/c/cc;)V

    return-object v3

    .line 501
    :cond_1
    sget-object v0, Lcom/crashlytics/android/c/bs;->a:Lcom/crashlytics/android/c/a/a/e;

    goto :goto_0

    .line 528
    :cond_2
    new-instance v0, Lcom/crashlytics/android/c/cb;

    invoke-direct {v0}, Lcom/crashlytics/android/c/cb;-><init>()V

    goto :goto_1
.end method

.method private static a(Lcom/crashlytics/android/c/a/a/c;)Lcom/crashlytics/android/c/cc;
    .locals 12

    .prologue
    .line 557
    if-nez p0, :cond_0

    .line 558
    new-instance v1, Lcom/crashlytics/android/c/cb;

    invoke-direct {v1}, Lcom/crashlytics/android/c/cb;-><init>()V

    .line 560
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/crashlytics/android/c/bw;

    iget v0, p0, Lcom/crashlytics/android/c/a/a/c;->f:I

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    div-float v2, v0, v2

    iget v3, p0, Lcom/crashlytics/android/c/a/a/c;->g:I

    iget-boolean v4, p0, Lcom/crashlytics/android/c/a/a/c;->h:Z

    iget v5, p0, Lcom/crashlytics/android/c/a/a/c;->a:I

    iget-wide v6, p0, Lcom/crashlytics/android/c/a/a/c;->b:J

    iget-wide v8, p0, Lcom/crashlytics/android/c/a/a/c;->d:J

    sub-long/2addr v6, v8

    iget-wide v8, p0, Lcom/crashlytics/android/c/a/a/c;->c:J

    iget-wide v10, p0, Lcom/crashlytics/android/c/a/a/c;->e:J

    sub-long/2addr v8, v10

    invoke-direct/range {v1 .. v9}, Lcom/crashlytics/android/c/bw;-><init>(FIZIJJ)V

    goto :goto_0
.end method

.method private static a([Lcom/crashlytics/android/c/a/a/a;)Lcom/crashlytics/android/c/cd;
    .locals 4

    .prologue
    .line 591
    if-eqz p0, :cond_0

    array-length v0, p0

    new-array v0, v0, [Lcom/crashlytics/android/c/bu;

    .line 593
    :goto_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 594
    new-instance v2, Lcom/crashlytics/android/c/bu;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lcom/crashlytics/android/c/bu;-><init>(Lcom/crashlytics/android/c/a/a/a;)V

    aput-object v2, v0, v1

    .line 593
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 591
    :cond_0
    sget-object v0, Lcom/crashlytics/android/c/bs;->e:[Lcom/crashlytics/android/c/bu;

    goto :goto_0

    .line 596
    :cond_1
    new-instance v1, Lcom/crashlytics/android/c/cd;

    invoke-direct {v1, v0}, Lcom/crashlytics/android/c/cd;-><init>([Lcom/crashlytics/android/c/cc;)V

    return-object v1
.end method

.method private static a([Lcom/crashlytics/android/c/a/a/b;)Lcom/crashlytics/android/c/cd;
    .locals 4

    .prologue
    .line 601
    if-eqz p0, :cond_0

    array-length v0, p0

    new-array v0, v0, [Lcom/crashlytics/android/c/bv;

    .line 604
    :goto_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 605
    new-instance v2, Lcom/crashlytics/android/c/bv;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lcom/crashlytics/android/c/bv;-><init>(Lcom/crashlytics/android/c/a/a/b;)V

    aput-object v2, v0, v1

    .line 604
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 601
    :cond_0
    sget-object v0, Lcom/crashlytics/android/c/bs;->f:[Lcom/crashlytics/android/c/bv;

    goto :goto_0

    .line 607
    :cond_1
    new-instance v1, Lcom/crashlytics/android/c/cd;

    invoke-direct {v1, v0}, Lcom/crashlytics/android/c/cd;-><init>([Lcom/crashlytics/android/c/cc;)V

    return-object v1
.end method

.method private static a([Lcom/crashlytics/android/c/a/a/f;)Lcom/crashlytics/android/c/cd;
    .locals 5

    .prologue
    .line 571
    if-eqz p0, :cond_0

    array-length v0, p0

    new-array v0, v0, [Lcom/crashlytics/android/c/cf;

    .line 573
    :goto_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 574
    aget-object v2, p0, v1

    .line 575
    new-instance v3, Lcom/crashlytics/android/c/cf;

    iget-object v4, v2, Lcom/crashlytics/android/c/a/a/f;->c:[Lcom/crashlytics/android/c/a/a/g;

    invoke-static {v4}, Lcom/crashlytics/android/c/bs;->a([Lcom/crashlytics/android/c/a/a/g;)Lcom/crashlytics/android/c/cd;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/crashlytics/android/c/cf;-><init>(Lcom/crashlytics/android/c/a/a/f;Lcom/crashlytics/android/c/cd;)V

    aput-object v3, v0, v1

    .line 573
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 571
    :cond_0
    sget-object v0, Lcom/crashlytics/android/c/bs;->c:[Lcom/crashlytics/android/c/cf;

    goto :goto_0

    .line 578
    :cond_1
    new-instance v1, Lcom/crashlytics/android/c/cd;

    invoke-direct {v1, v0}, Lcom/crashlytics/android/c/cd;-><init>([Lcom/crashlytics/android/c/cc;)V

    return-object v1
.end method

.method private static a([Lcom/crashlytics/android/c/a/a/g;)Lcom/crashlytics/android/c/cd;
    .locals 4

    .prologue
    .line 582
    if-eqz p0, :cond_0

    array-length v0, p0

    new-array v0, v0, [Lcom/crashlytics/android/c/bz;

    .line 584
    :goto_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 585
    new-instance v2, Lcom/crashlytics/android/c/bz;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lcom/crashlytics/android/c/bz;-><init>(Lcom/crashlytics/android/c/a/a/g;)V

    aput-object v2, v0, v1

    .line 584
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 582
    :cond_0
    sget-object v0, Lcom/crashlytics/android/c/bs;->d:[Lcom/crashlytics/android/c/bz;

    goto :goto_0

    .line 587
    :cond_1
    new-instance v1, Lcom/crashlytics/android/c/cd;

    invoke-direct {v1, v0}, Lcom/crashlytics/android/c/cd;-><init>([Lcom/crashlytics/android/c/cc;)V

    return-object v1
.end method

.method public static a(Lcom/crashlytics/android/c/a/a/d;Lcom/crashlytics/android/c/bk;Ljava/util/Map;Lcom/crashlytics/android/c/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/crashlytics/android/c/a/a/d;",
            "Lcom/crashlytics/android/c/bk;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/crashlytics/android/c/f;",
            ")V"
        }
    .end annotation

    .prologue
    .line 622
    invoke-static {p0, p1, p2}, Lcom/crashlytics/android/c/bs;->a(Lcom/crashlytics/android/c/a/a/d;Lcom/crashlytics/android/c/bk;Ljava/util/Map;)Lcom/crashlytics/android/c/bx;

    move-result-object v0

    .line 624
    invoke-virtual {v0, p3}, Lcom/crashlytics/android/c/bx;->b(Lcom/crashlytics/android/c/f;)V

    .line 625
    return-void
.end method

.method private static a([Lcom/crashlytics/android/c/a/a/b;Ljava/util/Map;)[Lcom/crashlytics/android/c/a/a/b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/crashlytics/android/c/a/a/b;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[",
            "Lcom/crashlytics/android/c/a/a/b;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 538
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 539
    if-eqz p0, :cond_0

    .line 540
    array-length v3, p0

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, p0, v0

    .line 541
    iget-object v5, v4, Lcom/crashlytics/android/c/a/a/b;->a:Ljava/lang/String;

    iget-object v4, v4, Lcom/crashlytics/android/c/a/a/b;->b:Ljava/lang/String;

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 546
    :cond_0
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Ljava/util/Map$Entry;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    .line 548
    array-length v2, v0

    new-array v4, v2, [Lcom/crashlytics/android/c/a/a/b;

    move v3, v1

    .line 549
    :goto_1
    array-length v1, v4

    if-ge v3, v1, :cond_1

    .line 550
    new-instance v5, Lcom/crashlytics/android/c/a/a/b;

    aget-object v1, v0, v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aget-object v2, v0, v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v5, v1, v2}, Lcom/crashlytics/android/c/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v4, v3

    .line 549
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 552
    :cond_1
    return-object v4
.end method

.method static synthetic a()[Lcom/crashlytics/android/c/cc;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/crashlytics/android/c/bs;->b:[Lcom/crashlytics/android/c/cc;

    return-object v0
.end method
