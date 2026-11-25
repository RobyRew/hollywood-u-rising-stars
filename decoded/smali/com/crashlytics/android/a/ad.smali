.class Lcom/crashlytics/android/a/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/crashlytics/android/a/ae;

.field final b:J

.field c:Ljava/util/Map;
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

.field d:Ljava/lang/String;

.field e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/lang/String;

.field g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/a/ae;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/crashlytics/android/a/ad;->a:Lcom/crashlytics/android/a/ae;

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/crashlytics/android/a/ad;->b:J

    .line 101
    iput-object v2, p0, Lcom/crashlytics/android/a/ad;->c:Ljava/util/Map;

    .line 102
    iput-object v2, p0, Lcom/crashlytics/android/a/ad;->d:Ljava/lang/String;

    .line 103
    iput-object v2, p0, Lcom/crashlytics/android/a/ad;->e:Ljava/util/Map;

    .line 104
    iput-object v2, p0, Lcom/crashlytics/android/a/ad;->f:Ljava/lang/String;

    .line 105
    iput-object v2, p0, Lcom/crashlytics/android/a/ad;->g:Ljava/util/Map;

    .line 106
    return-void
.end method


# virtual methods
.method public a(Lcom/crashlytics/android/a/af;)Lcom/crashlytics/android/a/ab;
    .locals 11

    .prologue
    .line 134
    new-instance v0, Lcom/crashlytics/android/a/ab;

    iget-wide v2, p0, Lcom/crashlytics/android/a/ad;->b:J

    iget-object v4, p0, Lcom/crashlytics/android/a/ad;->a:Lcom/crashlytics/android/a/ae;

    iget-object v5, p0, Lcom/crashlytics/android/a/ad;->c:Ljava/util/Map;

    iget-object v6, p0, Lcom/crashlytics/android/a/ad;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/crashlytics/android/a/ad;->e:Ljava/util/Map;

    iget-object v8, p0, Lcom/crashlytics/android/a/ad;->f:Ljava/lang/String;

    iget-object v9, p0, Lcom/crashlytics/android/a/ad;->g:Ljava/util/Map;

    const/4 v10, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v10}, Lcom/crashlytics/android/a/ab;-><init>(Lcom/crashlytics/android/a/af;JLcom/crashlytics/android/a/ae;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/crashlytics/android/a/ac;)V

    return-object v0
.end method

.method public a(Ljava/util/Map;)Lcom/crashlytics/android/a/ad;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/crashlytics/android/a/ad;"
        }
    .end annotation

    .prologue
    .line 109
    iput-object p1, p0, Lcom/crashlytics/android/a/ad;->c:Ljava/util/Map;

    .line 110
    return-object p0
.end method

.method public b(Ljava/util/Map;)Lcom/crashlytics/android/a/ad;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/crashlytics/android/a/ad;"
        }
    .end annotation

    .prologue
    .line 119
    iput-object p1, p0, Lcom/crashlytics/android/a/ad;->e:Ljava/util/Map;

    .line 120
    return-object p0
.end method
