.class public Lcom/crashlytics/android/c/ao;
.super Lb/a/a/a/q;
.source "SourceFile"


# annotations
.annotation runtime Lb/a/a/a/a/c/n;
    a = {
        Lcom/crashlytics/android/c/a/a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/a/a/q",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/crashlytics/android/c/av;

.field private d:Lcom/crashlytics/android/c/av;

.field private k:Lcom/crashlytics/android/c/ax;

.field private l:Lcom/crashlytics/android/c/q;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:F

.field private q:Z

.field private final r:Lcom/crashlytics/android/c/cg;

.field private s:Lb/a/a/a/a/e/m;

.field private t:Lcom/crashlytics/android/c/n;

.field private u:Lcom/crashlytics/android/c/a/a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 175
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/crashlytics/android/c/ao;-><init>(FLcom/crashlytics/android/c/ax;Lcom/crashlytics/android/c/cg;Z)V

    .line 176
    return-void
.end method

.method constructor <init>(FLcom/crashlytics/android/c/ax;Lcom/crashlytics/android/c/cg;Z)V
    .locals 6

    .prologue
    .line 180
    const-string/jumbo v0, "Crashlytics Exception Handler"

    invoke-static {v0}, Lb/a/a/a/a/b/v;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/crashlytics/android/c/ao;-><init>(FLcom/crashlytics/android/c/ax;Lcom/crashlytics/android/c/cg;ZLjava/util/concurrent/ExecutorService;)V

    .line 182
    return-void
.end method

.method constructor <init>(FLcom/crashlytics/android/c/ax;Lcom/crashlytics/android/c/cg;ZLjava/util/concurrent/ExecutorService;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 189
    invoke-direct {p0}, Lb/a/a/a/q;-><init>()V

    .line 79
    iput-object v0, p0, Lcom/crashlytics/android/c/ao;->m:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/crashlytics/android/c/ao;->n:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/crashlytics/android/c/ao;->o:Ljava/lang/String;

    .line 190
    iput p1, p0, Lcom/crashlytics/android/c/ao;->p:F

    .line 191
    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lcom/crashlytics/android/c/ao;->k:Lcom/crashlytics/android/c/ax;

    .line 192
    iput-object p3, p0, Lcom/crashlytics/android/c/ao;->r:Lcom/crashlytics/android/c/cg;

    .line 193
    iput-boolean p4, p0, Lcom/crashlytics/android/c/ao;->q:Z

    .line 194
    new-instance v0, Lcom/crashlytics/android/c/n;

    invoke-direct {v0, p5}, Lcom/crashlytics/android/c/n;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iput-object v0, p0, Lcom/crashlytics/android/c/ao;->t:Lcom/crashlytics/android/c/n;

    .line 196
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/c/ao;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/crashlytics/android/c/ao;->a:J

    .line 198
    return-void

    .line 191
    :cond_0
    new-instance p2, Lcom/crashlytics/android/c/au;

    invoke-direct {p2, v0}, Lcom/crashlytics/android/c/au;-><init>(Lcom/crashlytics/android/c/ap;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/crashlytics/android/c/ao;)Lcom/crashlytics/android/c/av;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/crashlytics/android/c/ao;->c:Lcom/crashlytics/android/c/av;

    return-object v0
.end method

.method private b(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 414
    iget-boolean v0, p0, Lcom/crashlytics/android/c/ao;->q:Z

    if-eqz v0, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    const-string/jumbo v0, "prior to logging messages."

    invoke-static {v0}, Lcom/crashlytics/android/c/ao;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/crashlytics/android/c/ao;->a:J

    sub-long/2addr v0, v2

    .line 423
    iget-object v2, p0, Lcom/crashlytics/android/c/ao;->l:Lcom/crashlytics/android/c/q;

    invoke-static {p1, p2, p3}, Lcom/crashlytics/android/c/ao;->c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/crashlytics/android/c/q;->a(JLjava/lang/String;)V

    goto :goto_0
.end method

.method static b(Ljava/lang/String;Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 876
    if-nez p1, :cond_1

    .line 877
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Configured not to require a build ID."

    invoke-interface {v1, v2, v3}, Lb/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    :cond_0
    :goto_0
    return v0

    .line 881
    :cond_1
    invoke-static {p0}, Lb/a/a/a/a/b/m;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 885
    const-string/jumbo v0, "CrashlyticsCore"

    const-string/jumbo v1, "."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    const-string/jumbo v0, "CrashlyticsCore"

    const-string/jumbo v1, ".     |  | "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    const-string/jumbo v0, "CrashlyticsCore"

    const-string/jumbo v1, ".     |  |"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    const-string/jumbo v0, "CrashlyticsCore"

    const-string/jumbo v1, ".     |  |"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    const-string/jumbo v0, "CrashlyticsCore"

    const-string/jumbo v1, ".   \\ |  | /"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    const-string/jumbo v0, "CrashlyticsCore"

    const-string/jumbo v1, ".    \\    /"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const-string/jumbo v0, "CrashlyticsCore"

    const-string/jumbo v1, ".     \\  /"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    const-string/jumbo v0, "CrashlyticsCore"

    const-string/jumbo v1, ".      \\/"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    const-string/jumbo v0, "CrashlyticsCore"

    const-string/jumbo v1, "."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    const-string/jumbo v0, "CrashlyticsCore"

    const-string/jumbo v1, "This app relies on Crashlytics. Please sign up for access at https://fabric.io/sign_up,\ninstall an Android build tool and ask a team member to invite you to this app\'s organization."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    const-string/jumbo v0, "CrashlyticsCore"

    const-string/jumbo v1, "."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    const-string/jumbo v0, "CrashlyticsCore"

    const-string/jumbo v1, ".      /\\"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    const-string/jumbo v0, "CrashlyticsCore"

    const-string/jumbo v1, ".     /  \\"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const-string/jumbo v0, "CrashlyticsCore"

    const-string/jumbo v1, ".    /    \\"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    const-string/jumbo v0, "CrashlyticsCore"

    const-string/jumbo v1, ".   / |  | \\"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    const-string/jumbo v0, "CrashlyticsCore"

    const-string/jumbo v1, ".     |  |"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    const-string/jumbo v0, "CrashlyticsCore"

    const-string/jumbo v1, ".     |  |"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const-string/jumbo v0, "CrashlyticsCore"

    const-string/jumbo v1, ".     |  |"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    const-string/jumbo v0, "CrashlyticsCore"

    const-string/jumbo v1, "."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private static c(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lb/a/a/a/a/b/m;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 828
    invoke-static {}, Lcom/crashlytics/android/c/ao;->f()Lcom/crashlytics/android/c/ao;

    move-result-object v0

    .line 829
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/crashlytics/android/c/ao;->l:Lcom/crashlytics/android/c/q;

    if-nez v0, :cond_1

    .line 830
    :cond_0
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Crashlytics must be initialized by calling Fabric.with(Context) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lb/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 833
    const/4 v0, 0x0

    .line 835
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static f()Lcom/crashlytics/android/c/ao;
    .locals 1

    .prologue
    .line 366
    const-class v0, Lcom/crashlytics/android/c/ao;

    invoke-static {v0}, Lb/a/a/a/f;->a(Ljava/lang/Class;)Lb/a/a/a/q;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/c/ao;

    return-object v0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 840
    if-eqz p0, :cond_0

    .line 841
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 842
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 843
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 846
    :cond_0
    return-object p0
.end method

.method private y()V
    .locals 4

    .prologue
    .line 673
    new-instance v1, Lcom/crashlytics/android/c/ap;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/c/ap;-><init>(Lcom/crashlytics/android/c/ao;)V

    .line 685
    invoke-virtual {p0}, Lcom/crashlytics/android/c/ao;->x()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/a/c/y;

    .line 686
    invoke-virtual {v1, v0}, Lb/a/a/a/a/c/s;->a(Lb/a/a/a/a/c/y;)V

    goto :goto_0

    .line 689
    :cond_0
    invoke-virtual {p0}, Lcom/crashlytics/android/c/ao;->u()Lb/a/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/f;->f()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 691
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously."

    invoke-interface {v1, v2, v3}, Lb/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    const-wide/16 v2, 0x4

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    .line 704
    :goto_1
    return-void

    .line 697
    :catch_0
    move-exception v0

    .line 698
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Crashlytics was interrupted during initialization."

    invoke-interface {v1, v2, v3, v0}, Lb/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 699
    :catch_1
    move-exception v0

    .line 700
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Problem encountered during Crashlytics initialization."

    invoke-interface {v1, v2, v3, v0}, Lb/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 701
    :catch_2
    move-exception v0

    .line 702
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Crashlytics timed out during initialization."

    invoke-interface {v1, v2, v3, v0}, Lb/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private z()V
    .locals 4

    .prologue
    .line 793
    iget-object v0, p0, Lcom/crashlytics/android/c/ao;->t:Lcom/crashlytics/android/c/n;

    new-instance v1, Lcom/crashlytics/android/c/at;

    iget-object v2, p0, Lcom/crashlytics/android/c/ao;->d:Lcom/crashlytics/android/c/av;

    invoke-direct {v1, v2}, Lcom/crashlytics/android/c/at;-><init>(Lcom/crashlytics/android/c/av;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/c/n;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 798
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 809
    :goto_0
    return-void

    .line 803
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/c/ao;->k:Lcom/crashlytics/android/c/ax;

    invoke-interface {v0}, Lcom/crashlytics/android/c/ax;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 804
    :catch_0
    move-exception v0

    .line 805
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Exception thrown by CrashlyticsListener while notifying of previous crash."

    invoke-interface {v1, v2, v3, v0}, Lb/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    const-string/jumbo v0, "2.3.15.167"

    return-object v0
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 440
    invoke-direct {p0, p1, p2, p3}, Lcom/crashlytics/android/c/ao;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v0, p1, v1, v2, v3}, Lb/a/a/a/t;->a(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 444
    return-void
.end method

.method a(Lcom/crashlytics/android/c/a/a;)V
    .locals 0

    .prologue
    .line 757
    iput-object p1, p0, Lcom/crashlytics/android/c/ao;->u:Lcom/crashlytics/android/c/a/a;

    .line 758
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 410
    const/4 v0, 0x3

    const-string/jumbo v1, "CrashlyticsCore"

    invoke-direct {p0, v0, v1, p1}, Lcom/crashlytics/android/c/ao;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method public a(Ljava/lang/String;D)V
    .locals 2

    .prologue
    .line 572
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/c/ao;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    return-void
.end method

.method public a(Ljava/lang/String;F)V
    .locals 1

    .prologue
    .line 581
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/c/ao;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 590
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/c/ao;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 599
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/c/ao;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 525
    iget-boolean v0, p0, Lcom/crashlytics/android/c/ao;->q:Z

    if-eqz v0, :cond_1

    .line 555
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    const-string/jumbo v0, "prior to setting keys."

    invoke-static {v0}, Lcom/crashlytics/android/c/ao;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    if-nez p1, :cond_3

    .line 534
    invoke-virtual {p0}, Lcom/crashlytics/android/c/ao;->t()Landroid/content/Context;

    move-result-object v0

    .line 535
    if-eqz v0, :cond_2

    invoke-static {v0}, Lb/a/a/a/a/b/m;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 536
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Custom attribute key must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 538
    :cond_2
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Attempting to set custom attribute with null key, ignoring."

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lb/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 544
    :cond_3
    invoke-static {p1}, Lcom/crashlytics/android/c/ao;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 546
    iget-object v0, p0, Lcom/crashlytics/android/c/ao;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    const/16 v2, 0x40

    if-lt v0, v2, :cond_4

    iget-object v0, p0, Lcom/crashlytics/android/c/ao;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 547
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Exceeded maximum number of custom attributes (64)"

    invoke-interface {v0, v1, v2}, Lb/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 552
    :cond_4
    if-nez p2, :cond_5

    const-string/jumbo v0, ""

    .line 553
    :goto_1
    iget-object v2, p0, Lcom/crashlytics/android/c/ao;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    iget-object v0, p0, Lcom/crashlytics/android/c/ao;->l:Lcom/crashlytics/android/c/q;

    iget-object v1, p0, Lcom/crashlytics/android/c/ao;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/c/q;->a(Ljava/util/Map;)V

    goto :goto_0

    .line 552
    :cond_5
    invoke-static {p2}, Lcom/crashlytics/android/c/ao;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 563
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/c/ao;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 382
    iget-boolean v0, p0, Lcom/crashlytics/android/c/ao;->q:Z

    if-eqz v0, :cond_1

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    const-string/jumbo v0, "prior to logging exceptions."

    invoke-static {v0}, Lcom/crashlytics/android/c/ao;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    if-nez p1, :cond_2

    .line 391
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v0

    const/4 v1, 0x5

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Crashlytics is ignoring a request to log a null exception."

    invoke-interface {v0, v1, v2, v3}, Lb/a/a/a/t;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 396
    :cond_2
    iget-object v0, p0, Lcom/crashlytics/android/c/ao;->l:Lcom/crashlytics/android/c/q;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/crashlytics/android/c/q;->b(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;)Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 214
    iget-boolean v0, p0, Lcom/crashlytics/android/c/ao;->q:Z

    if-eqz v0, :cond_0

    move v0, v9

    .line 292
    :goto_0
    return v0

    .line 219
    :cond_0
    new-instance v0, Lb/a/a/a/a/b/k;

    invoke-direct {v0}, Lb/a/a/a/a/b/k;-><init>()V

    invoke-virtual {v0, p1}, Lb/a/a/a/a/b/k;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 221
    if-nez v1, :cond_1

    move v0, v9

    .line 222
    goto :goto_0

    .line 227
    :cond_1
    invoke-static {p1}, Lb/a/a/a/a/b/m;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 230
    const-string/jumbo v0, "com.crashlytics.RequireBuildId"

    invoke-static {p1, v0, v10}, Lb/a/a/a/a/b/m;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 233
    invoke-static {v2, v0}, Lcom/crashlytics/android/c/ao;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 234
    new-instance v0, Lb/a/a/a/a/c/z;

    const-string/jumbo v1, "This app relies on Crashlytics. Please sign up for access at https://fabric.io/sign_up,\ninstall an Android build tool and ask a team member to invite you to this app\'s organization."

    invoke-direct {v0, v1}, Lb/a/a/a/a/c/z;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_2
    :try_start_0
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v0

    const-string/jumbo v3, "CrashlyticsCore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Initializing Crashlytics "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/crashlytics/android/c/ao;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lb/a/a/a/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    new-instance v6, Lb/a/a/a/a/f/b;

    invoke-direct {v6, p0}, Lb/a/a/a/a/f/b;-><init>(Lb/a/a/a/q;)V

    .line 241
    new-instance v0, Lcom/crashlytics/android/c/av;

    const-string/jumbo v3, "crash_marker"

    invoke-direct {v0, v3, v6}, Lcom/crashlytics/android/c/av;-><init>(Ljava/lang/String;Lb/a/a/a/a/f/a;)V

    iput-object v0, p0, Lcom/crashlytics/android/c/ao;->d:Lcom/crashlytics/android/c/av;

    .line 242
    new-instance v0, Lcom/crashlytics/android/c/av;

    const-string/jumbo v3, "initialization_marker"

    invoke-direct {v0, v3, v6}, Lcom/crashlytics/android/c/av;-><init>(Ljava/lang/String;Lb/a/a/a/a/f/a;)V

    iput-object v0, p0, Lcom/crashlytics/android/c/ao;->c:Lcom/crashlytics/android/c/av;

    .line 245
    new-instance v0, Lb/a/a/a/a/f/d;

    invoke-virtual {p0}, Lcom/crashlytics/android/c/ao;->t()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "com.crashlytics.android.core.CrashlyticsCore"

    invoke-direct {v0, v3, v4}, Lb/a/a/a/a/f/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 247
    invoke-static {v0, p0}, Lcom/crashlytics/android/c/ch;->a(Lb/a/a/a/a/f/c;Lcom/crashlytics/android/c/ao;)Lcom/crashlytics/android/c/ch;

    move-result-object v5

    .line 250
    iget-object v0, p0, Lcom/crashlytics/android/c/ao;->r:Lcom/crashlytics/android/c/cg;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/crashlytics/android/c/ay;

    iget-object v3, p0, Lcom/crashlytics/android/c/ao;->r:Lcom/crashlytics/android/c/cg;

    invoke-direct {v0, v3}, Lcom/crashlytics/android/c/ay;-><init>(Lcom/crashlytics/android/c/cg;)V

    .line 252
    :goto_1
    new-instance v3, Lb/a/a/a/a/e/b;

    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v4

    invoke-direct {v3, v4}, Lb/a/a/a/a/e/b;-><init>(Lb/a/a/a/t;)V

    iput-object v3, p0, Lcom/crashlytics/android/c/ao;->s:Lb/a/a/a/a/e/m;

    .line 253
    iget-object v3, p0, Lcom/crashlytics/android/c/ao;->s:Lb/a/a/a/a/e/m;

    invoke-interface {v3, v0}, Lb/a/a/a/a/e/m;->a(Lb/a/a/a/a/e/o;)V

    .line 255
    invoke-virtual {p0}, Lcom/crashlytics/android/c/ao;->s()Lb/a/a/a/a/b/z;

    move-result-object v4

    .line 256
    invoke-static {p1, v4, v1, v2}, Lcom/crashlytics/android/c/a;->a(Landroid/content/Context;Lb/a/a/a/a/b/z;Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/c/a;

    move-result-object v7

    .line 257
    new-instance v8, Lcom/crashlytics/android/c/bn;

    iget-object v0, v7, Lcom/crashlytics/android/c/a;->d:Ljava/lang/String;

    invoke-direct {v8, p1, v0}, Lcom/crashlytics/android/c/bn;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 260
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Installer package name is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v7, Lcom/crashlytics/android/c/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lb/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    new-instance v0, Lcom/crashlytics/android/c/q;

    iget-object v2, p0, Lcom/crashlytics/android/c/ao;->t:Lcom/crashlytics/android/c/n;

    iget-object v3, p0, Lcom/crashlytics/android/c/ao;->s:Lb/a/a/a/a/e/m;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/crashlytics/android/c/q;-><init>(Lcom/crashlytics/android/c/ao;Lcom/crashlytics/android/c/n;Lb/a/a/a/a/e/m;Lb/a/a/a/a/b/z;Lcom/crashlytics/android/c/ch;Lb/a/a/a/a/f/a;Lcom/crashlytics/android/c/a;Lcom/crashlytics/android/c/cv;)V

    iput-object v0, p0, Lcom/crashlytics/android/c/ao;->l:Lcom/crashlytics/android/c/q;

    .line 269
    invoke-virtual {p0}, Lcom/crashlytics/android/c/ao;->o()Z

    move-result v0

    .line 271
    invoke-direct {p0}, Lcom/crashlytics/android/c/ao;->z()V

    .line 273
    iget-object v1, p0, Lcom/crashlytics/android/c/ao;->l:Lcom/crashlytics/android/c/q;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/crashlytics/android/c/q;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 275
    if-eqz v0, :cond_4

    invoke-static {p1}, Lb/a/a/a/a/b/m;->n(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 276
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Crashlytics did not finish previous background initialization. Initializing synchronously."

    invoke-interface {v0, v1, v2}, Lb/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-direct {p0}, Lcom/crashlytics/android/c/ao;->y()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v9

    .line 282
    goto/16 :goto_0

    :cond_3
    move-object v0, v11

    .line 250
    goto :goto_1

    .line 284
    :catch_0
    move-exception v0

    .line 285
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Crashlytics was not started due to an exception during initialization"

    invoke-interface {v1, v2, v3, v0}, Lb/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 287
    iput-object v11, p0, Lcom/crashlytics/android/c/ao;->l:Lcom/crashlytics/android/c/q;

    move v0, v9

    .line 288
    goto/16 :goto_0

    .line 291
    :cond_4
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Exception handling initialization successful"

    invoke-interface {v0, v1, v2}, Lb/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v10

    .line 292
    goto/16 :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    const-string/jumbo v0, "com.crashlytics.sdk.android.crashlytics-core"

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 468
    iget-boolean v0, p0, Lcom/crashlytics/android/c/ao;->q:Z

    if-eqz v0, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    const-string/jumbo v0, "prior to setting user data."

    invoke-static {v0}, Lcom/crashlytics/android/c/ao;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    invoke-static {p1}, Lcom/crashlytics/android/c/ao;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/c/ao;->m:Ljava/lang/String;

    .line 477
    iget-object v0, p0, Lcom/crashlytics/android/c/ao;->l:Lcom/crashlytics/android/c/q;

    iget-object v1, p0, Lcom/crashlytics/android/c/ao;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/crashlytics/android/c/ao;->o:Ljava/lang/String;

    iget-object v3, p0, Lcom/crashlytics/android/c/ao;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/crashlytics/android/c/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected b_()Z
    .locals 1

    .prologue
    .line 206
    invoke-super {p0}, Lb/a/a/a/q;->t()Landroid/content/Context;

    move-result-object v0

    .line 207
    invoke-virtual {p0, v0}, Lcom/crashlytics/android/c/ao;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/crashlytics/android/c/ao;->q:Z

    if-eqz v0, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    const-string/jumbo v0, "prior to setting user data."

    invoke-static {v0}, Lcom/crashlytics/android/c/ao;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    invoke-static {p1}, Lcom/crashlytics/android/c/ao;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/c/ao;->o:Ljava/lang/String;

    .line 495
    iget-object v0, p0, Lcom/crashlytics/android/c/ao;->l:Lcom/crashlytics/android/c/q;

    iget-object v1, p0, Lcom/crashlytics/android/c/ao;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/crashlytics/android/c/ao;->o:Ljava/lang/String;

    iget-object v3, p0, Lcom/crashlytics/android/c/ao;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/crashlytics/android/c/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected d()Ljava/lang/Void;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 298
    invoke-virtual {p0}, Lcom/crashlytics/android/c/ao;->m()V

    .line 300
    invoke-virtual {p0}, Lcom/crashlytics/android/c/ao;->p()Lcom/crashlytics/android/c/a/a/d;

    move-result-object v0

    .line 301
    if-eqz v0, :cond_0

    .line 302
    iget-object v1, p0, Lcom/crashlytics/android/c/ao;->l:Lcom/crashlytics/android/c/q;

    invoke-virtual {v1, v0}, Lcom/crashlytics/android/c/q;->a(Lcom/crashlytics/android/c/a/a/d;)V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/c/ao;->l:Lcom/crashlytics/android/c/q;

    invoke-virtual {v0}, Lcom/crashlytics/android/c/q;->d()V

    .line 308
    :try_start_0
    invoke-static {}, Lb/a/a/a/a/g/q;->a()Lb/a/a/a/a/g/q;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/a/g/q;->b()Lb/a/a/a/a/g/v;

    move-result-object v0

    .line 310
    if-nez v0, :cond_1

    .line 311
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Received null settings, skipping report submission!"

    invoke-interface {v0, v1, v2}, Lb/a/a/a/t;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    invoke-virtual {p0}, Lcom/crashlytics/android/c/ao;->n()V

    .line 341
    :goto_0
    return-object v4

    .line 315
    :cond_1
    :try_start_1
    iget-object v1, v0, Lb/a/a/a/a/g/v;->d:Lb/a/a/a/a/g/m;

    iget-boolean v1, v1, Lb/a/a/a/a/g/m;->c:Z

    if-nez v1, :cond_2

    .line 316
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Collection of crash reports disabled in Crashlytics settings."

    invoke-interface {v0, v1, v2}, Lb/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    invoke-virtual {p0}, Lcom/crashlytics/android/c/ao;->n()V

    goto :goto_0

    .line 321
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/crashlytics/android/c/ao;->l:Lcom/crashlytics/android/c/q;

    iget-object v2, v0, Lb/a/a/a/a/g/v;->b:Lb/a/a/a/a/g/p;

    invoke-virtual {v1, v2}, Lcom/crashlytics/android/c/q;->a(Lb/a/a/a/a/g/p;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 322
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Could not finalize previous sessions."

    invoke-interface {v1, v2, v3}, Lb/a/a/a/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_3
    iget-object v1, p0, Lcom/crashlytics/android/c/ao;->l:Lcom/crashlytics/android/c/q;

    iget v2, p0, Lcom/crashlytics/android/c/ao;->p:F

    invoke-virtual {v1, v2, v0}, Lcom/crashlytics/android/c/q;->a(FLb/a/a/a/a/g/v;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 338
    invoke-virtual {p0}, Lcom/crashlytics/android/c/ao;->n()V

    goto :goto_0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    :try_start_3
    invoke-static {}, Lb/a/a/a/f;->h()Lb/a/a/a/t;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Crashlytics encountered a problem during asynchronous initialization."

    invoke-interface {v1, v2, v3, v0}, Lb/a/a/a/t;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 338
    invoke-virtual {p0}, Lcom/crashlytics/android/c/ao;->n()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/crashlytics/android/c/ao;->n()V

    throw v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/crashlytics/android/c/ao;->q:Z

    if-eqz v0, :cond_1

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 508
    :cond_1
    const-string/jumbo v0, "prior to setting user data."

    invoke-static {v0}, Lcom/crashlytics/android/c/ao;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    invoke-static {p1}, Lcom/crashlytics/android/c/ao;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/c/ao;->n:Ljava/lang/String;

    .line 513
    iget-object v0, p0, Lcom/crashlytics/android/c/ao;->l:Lcom/crashlytics/android/c/q;

    iget-object v1, p0, Lcom/crashlytics/android/c/ao;->m:Ljava/lang/String;

    iget-object v2, p0, Lcom/crashlytics/android/c/ao;->o:Ljava/lang/String;

    iget-object v3, p0, Lcom/crashlytics/android/c/ao;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/crashlytics/android/c/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected synthetic e()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/crashlytics/android/c/ao;->d()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/crashlytics/android/c/cg;
    .locals 1

    .prologue
    .line 370
    iget-boolean v0, p0, Lcom/crashlytics/android/c/ao;->q:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/c/ao;->r:Lcom/crashlytics/android/c/cg;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method h()Ljava/util/Map;
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
    .line 644
    iget-object v0, p0, Lcom/crashlytics/android/c/ao;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method i()Lcom/crashlytics/android/c/q;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/crashlytics/android/c/ao;->l:Lcom/crashlytics/android/c/q;

    return-object v0
.end method

.method j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 652
    invoke-virtual {p0}, Lcom/crashlytics/android/c/ao;->s()Lb/a/a/a/a/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/a/b/z;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/c/ao;->m:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 656
    invoke-virtual {p0}, Lcom/crashlytics/android/c/ao;->s()Lb/a/a/a/a/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/a/b/z;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/c/ao;->n:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/crashlytics/android/c/ao;->s()Lb/a/a/a/a/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/a/a/b/z;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/c/ao;->o:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method m()V
    .locals 2

    .prologue
    .line 710
    iget-object v0, p0, Lcom/crashlytics/android/c/ao;->t:Lcom/crashlytics/android/c/n;

    new-instance v1, Lcom/crashlytics/android/c/aq;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/c/aq;-><init>(Lcom/crashlytics/android/c/ao;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/c/n;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 720
    return-void
.end method

.method n()V
    .locals 2

    .prologue
    .line 726
    iget-object v0, p0, Lcom/crashlytics/android/c/ao;->t:Lcom/crashlytics/android/c/n;

    new-instance v1, Lcom/crashlytics/android/c/ar;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/c/ar;-><init>(Lcom/crashlytics/android/c/ao;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/c/n;->b(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 741
    return-void
.end method

.method o()Z
    .locals 2

    .prologue
    .line 744
    iget-object v0, p0, Lcom/crashlytics/android/c/ao;->t:Lcom/crashlytics/android/c/n;

    new-instance v1, Lcom/crashlytics/android/c/as;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/c/as;-><init>(Lcom/crashlytics/android/c/ao;)V

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/c/n;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method p()Lcom/crashlytics/android/c/a/a/d;
    .locals 2

    .prologue
    .line 765
    const/4 v0, 0x0

    .line 766
    iget-object v1, p0, Lcom/crashlytics/android/c/ao;->u:Lcom/crashlytics/android/c/a/a;

    if-eqz v1, :cond_0

    .line 767
    iget-object v0, p0, Lcom/crashlytics/android/c/ao;->u:Lcom/crashlytics/android/c/a/a;

    invoke-interface {v0}, Lcom/crashlytics/android/c/a/a;->d()Lcom/crashlytics/android/c/a/a/d;

    move-result-object v0

    .line 769
    :cond_0
    return-object v0
.end method

.method q()V
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lcom/crashlytics/android/c/ao;->d:Lcom/crashlytics/android/c/av;

    invoke-virtual {v0}, Lcom/crashlytics/android/c/av;->a()Z

    .line 817
    return-void
.end method
