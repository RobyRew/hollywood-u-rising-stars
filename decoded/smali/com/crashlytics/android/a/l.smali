.class Lcom/crashlytics/android/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/a/a/a/d/h;


# instance fields
.field private final a:Lcom/crashlytics/android/a/y;

.field private final b:Lcom/crashlytics/android/a/u;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/a/y;Lcom/crashlytics/android/a/u;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/crashlytics/android/a/l;->a:Lcom/crashlytics/android/a/y;

    .line 42
    iput-object p2, p0, Lcom/crashlytics/android/a/l;->b:Lcom/crashlytics/android/a/u;

    .line 43
    return-void
.end method

.method public static a(Lcom/crashlytics/android/a/y;)Lcom/crashlytics/android/a/l;
    .locals 5

    .prologue
    .line 31
    new-instance v0, Lcom/crashlytics/android/a/t;

    new-instance v1, Lb/a/a/a/a/c/a/c;

    const-wide/16 v2, 0x3e8

    const/16 v4, 0x8

    invoke-direct {v1, v2, v3, v4}, Lb/a/a/a/a/c/a/c;-><init>(JI)V

    const-wide v2, 0x3fb999999999999aL    # 0.1

    invoke-direct {v0, v1, v2, v3}, Lcom/crashlytics/android/a/t;-><init>(Lb/a/a/a/a/c/a/a;D)V

    .line 33
    new-instance v1, Lb/a/a/a/a/c/a/b;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lb/a/a/a/a/c/a/b;-><init>(I)V

    .line 34
    new-instance v2, Lb/a/a/a/a/c/a/e;

    invoke-direct {v2, v0, v1}, Lb/a/a/a/a/c/a/e;-><init>(Lb/a/a/a/a/c/a/a;Lb/a/a/a/a/c/a/d;)V

    .line 35
    new-instance v0, Lcom/crashlytics/android/a/u;

    invoke-direct {v0, v2}, Lcom/crashlytics/android/a/u;-><init>(Lb/a/a/a/a/c/a/e;)V

    .line 36
    new-instance v1, Lcom/crashlytics/android/a/l;

    invoke-direct {v1, p0, v0}, Lcom/crashlytics/android/a/l;-><init>(Lcom/crashlytics/android/a/y;Lcom/crashlytics/android/a/u;)V

    return-object v1
.end method


# virtual methods
.method public a(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 48
    iget-object v1, p0, Lcom/crashlytics/android/a/l;->b:Lcom/crashlytics/android/a/u;

    invoke-virtual {v1, v2, v3}, Lcom/crashlytics/android/a/u;->a(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/crashlytics/android/a/l;->a:Lcom/crashlytics/android/a/y;

    invoke-virtual {v1, p1}, Lcom/crashlytics/android/a/y;->a(Ljava/util/List;)Z

    move-result v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    iget-object v0, p0, Lcom/crashlytics/android/a/l;->b:Lcom/crashlytics/android/a/u;

    invoke-virtual {v0}, Lcom/crashlytics/android/a/u;->a()V

    .line 52
    const/4 v0, 0x1

    .line 58
    :cond_0
    :goto_0
    return v0

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/crashlytics/android/a/l;->b:Lcom/crashlytics/android/a/u;

    invoke-virtual {v1, v2, v3}, Lcom/crashlytics/android/a/u;->b(J)V

    goto :goto_0
.end method
