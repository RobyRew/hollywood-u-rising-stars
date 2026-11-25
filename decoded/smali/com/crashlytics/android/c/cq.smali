.class Lcom/crashlytics/android/c/cq;
.super Lb/a/a/a/a/b/l;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/crashlytics/android/c/cm;

.field private final b:F

.field private final c:Lcom/crashlytics/android/c/cp;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/c/cm;FLcom/crashlytics/android/c/cp;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/crashlytics/android/c/cq;->a:Lcom/crashlytics/android/c/cm;

    invoke-direct {p0}, Lb/a/a/a/a/b/l;-><init>()V

    .line 153
    iput p2, p0, Lcom/crashlytics/android/c/cq;->b:F

    .line 154
    iput-object p3, p0, Lcom/crashlytics/android/c/cq;->c:Lcom/crashlytics/android/c/cp;

    .line 155
    return-void
.end method

.method private b()V
    .locals 10

    .prologue
    .line 170
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Starting report processing in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/crashlytics/android/c/cq;->b:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " second(s)..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lb/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget v0, p0, Lcom/crashlytics/android/c/cq;->b:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 175
    :try_start_0
    iget v0, p0, Lcom/crashlytics/android/c/cq;->b:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :cond_0
    invoke-static {}, Lcom/crashlytics/android/c/ao;->f()Lcom/crashlytics/android/c/ao;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Lcom/crashlytics/android/c/ao;->i()Lcom/crashlytics/android/c/q;

    move-result-object v3

    .line 184
    iget-object v0, p0, Lcom/crashlytics/android/c/cq;->a:Lcom/crashlytics/android/c/cm;

    invoke-virtual {v0}, Lcom/crashlytics/android/c/cm;->a()Ljava/util/List;

    move-result-object v1

    .line 186
    invoke-virtual {v3}, Lcom/crashlytics/android/c/q;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    :cond_1
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 191
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/crashlytics/android/c/cq;->c:Lcom/crashlytics/android/c/cp;

    invoke-interface {v0}, Lcom/crashlytics/android/c/cp;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 193
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v0

    const-string/jumbo v2, "CrashlyticsCore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "User declined to send. Removing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Report(s)."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lb/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/c/cl;

    .line 196
    invoke-interface {v0}, Lcom/crashlytics/android/c/cl;->f()V

    goto :goto_1

    .line 201
    :cond_3
    const/4 v0, 0x0

    move v9, v0

    move-object v0, v1

    move v1, v9

    .line 202
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 203
    invoke-virtual {v3}, Lcom/crashlytics/android/c/q;->e()Z

    move-result v2

    if-nez v2, :cond_1

    .line 216
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v2

    const-string/jumbo v4, "CrashlyticsCore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Attempting to send "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " report(s)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lb/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/c/cl;

    .line 219
    iget-object v4, p0, Lcom/crashlytics/android/c/cq;->a:Lcom/crashlytics/android/c/cm;

    invoke-virtual {v4, v0}, Lcom/crashlytics/android/c/cm;->a(Lcom/crashlytics/android/c/cl;)Z

    goto :goto_3

    .line 223
    :cond_4
    iget-object v0, p0, Lcom/crashlytics/android/c/cq;->a:Lcom/crashlytics/android/c/cm;

    invoke-virtual {v0}, Lcom/crashlytics/android/c/cm;->a()Ljava/util/List;

    move-result-object v2

    .line 224
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 225
    invoke-static {}, Lcom/crashlytics/android/c/cm;->b()[S

    move-result-object v4

    add-int/lit8 v0, v1, 0x1

    invoke-static {}, Lcom/crashlytics/android/c/cm;->b()[S

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget-short v1, v4, v1

    int-to-long v4, v1

    .line 227
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v1

    const-string/jumbo v6, "CrashlyticsCore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Report submisson: scheduling delayed retry in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " seconds"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Lb/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move v1, v0

    move-object v0, v2

    .line 236
    goto/16 :goto_2

    .line 232
    :catch_1
    move-exception v0

    .line 233
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_0

    :cond_5
    move-object v0, v2

    goto/16 :goto_2
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 160
    :try_start_0
    invoke-direct {p0}, Lcom/crashlytics/android/c/cq;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    iget-object v0, p0, Lcom/crashlytics/android/c/cq;->a:Lcom/crashlytics/android/c/cm;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/crashlytics/android/c/cm;->a(Lcom/crashlytics/android/c/cm;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 167
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "An unexpected error occurred while attempting to upload crash reports."

    invoke-interface {v1, v2, v3, v0}, Lb/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
