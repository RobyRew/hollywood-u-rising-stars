.class Lcom/crashlytics/android/ndk/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/crashlytics/android/ndk/a;


# static fields
.field private static final a:[Ljava/io/File;


# instance fields
.field private final b:Lb/a/a/a/a/f/a;

.field private final c:Lb/a/a/a/a/b/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    sput-object v0, Lcom/crashlytics/android/ndk/k;->a:[Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Lb/a/a/a/a/f/a;)V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lb/a/a/a/a/b/aj;

    invoke-direct {v0}, Lb/a/a/a/a/b/aj;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/crashlytics/android/ndk/k;-><init>(Lb/a/a/a/a/f/a;Lb/a/a/a/a/b/s;)V

    .line 25
    return-void
.end method

.method constructor <init>(Lb/a/a/a/a/f/a;Lb/a/a/a/a/b/s;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/crashlytics/android/ndk/k;->b:Lb/a/a/a/a/f/a;

    .line 29
    iput-object p2, p0, Lcom/crashlytics/android/ndk/k;->c:Lb/a/a/a/a/b/s;

    .line 30
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string/jumbo v2, ".ndk.json"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/io/File;
    .locals 9

    .prologue
    .line 53
    const/4 v5, 0x0

    .line 54
    invoke-direct {p0}, Lcom/crashlytics/android/ndk/k;->e()[Ljava/io/File;

    move-result-object v7

    .line 55
    const-wide/16 v2, 0x0

    .line 56
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    array-length v0, v7

    if-ge v6, v0, :cond_0

    .line 57
    aget-object v4, v7, v6

    .line 58
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/crashlytics/android/ndk/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 59
    cmp-long v8, v0, v2

    if-lez v8, :cond_1

    move-object v2, v4

    .line 56
    :goto_1
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    move-object v5, v2

    move-wide v2, v0

    goto :goto_0

    .line 64
    :cond_0
    return-object v5

    :cond_1
    move-wide v0, v2

    move-object v2, v5

    goto :goto_1
.end method

.method private e()[Ljava/io/File;
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/crashlytics/android/ndk/k;->f()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 73
    if-nez v0, :cond_0

    sget-object v0, Lcom/crashlytics/android/ndk/k;->a:[Ljava/io/File;

    :cond_0
    return-object v0
.end method

.method private f()Ljava/io/File;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/crashlytics/android/ndk/k;->b:Lb/a/a/a/a/f/a;

    invoke-interface {v0}, Lb/a/a/a/a/f/a;->a()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 4

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/crashlytics/android/ndk/k;->c:Lb/a/a/a/a/b/s;

    invoke-interface {v1}, Lb/a/a/a/a/b/s;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".ndk.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/crashlytics/android/ndk/k;->f()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public b()Ljava/io/File;
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/crashlytics/android/ndk/k;->d()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 4

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/crashlytics/android/ndk/k;->e()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 46
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method
