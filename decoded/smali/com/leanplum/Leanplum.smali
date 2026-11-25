.class public Lcom/leanplum/Leanplum;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static A:Ljava/lang/Runnable; = null

.field public static ACTION_KIND_ACTION:I = 0x0

.field public static ACTION_KIND_MESSAGE:I = 0x0

.field public static final PURCHASE_EVENT_NAME:Ljava/lang/String; = "Purchase"

.field static a:Z

.field static b:Z

.field static c:Z

.field private static final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/leanplum/callbacks/StartCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/leanplum/callbacks/VariablesChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/leanplum/callbacks/VariablesChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/leanplum/callbacks/VariablesChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/leanplum/callbacks/ActionCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private static j:Lcom/leanplum/callbacks/RegisterDeviceCallback;

.field private static k:Lcom/leanplum/callbacks/RegisterDeviceFinishedCallback;

.field private static l:Lcom/leanplum/cq;

.field private static m:Z

.field private static n:Z

.field private static o:Z

.field private static p:Z

.field private static q:Lcom/leanplum/LeanplumDeviceIdMode;

.field private static r:Ljava/lang/String;

.field private static s:Z

.field private static t:Z

.field private static u:Z

.field private static final v:Ljava/lang/Object;

.field private static w:Ljava/util/concurrent/ScheduledExecutorService;

.field private static final x:Ljava/lang/Object;

.field private static y:Landroid/content/Context;

.field private static final z:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    const/4 v0, 0x1

    sput v0, Lcom/leanplum/Leanplum;->ACTION_KIND_MESSAGE:I

    .line 52
    const/4 v0, 0x2

    sput v0, Lcom/leanplum/Leanplum;->ACTION_KIND_ACTION:I

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/leanplum/Leanplum;->d:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/leanplum/Leanplum;->e:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/leanplum/Leanplum;->f:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/leanplum/Leanplum;->g:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/leanplum/Leanplum;->h:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/leanplum/Leanplum;->i:Ljava/util/Map;

    .line 83
    sput-boolean v1, Lcom/leanplum/Leanplum;->b:Z

    .line 84
    sget-object v0, Lcom/leanplum/LeanplumDeviceIdMode;->MD5_MAC_ADDRESS:Lcom/leanplum/LeanplumDeviceIdMode;

    sput-object v0, Lcom/leanplum/Leanplum;->q:Lcom/leanplum/LeanplumDeviceIdMode;

    .line 87
    sput-boolean v1, Lcom/leanplum/Leanplum;->t:Z

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/leanplum/Leanplum;->v:Ljava/lang/Object;

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/leanplum/Leanplum;->x:Ljava/lang/Object;

    .line 98
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/leanplum/Leanplum;->z:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .prologue
    .line 950
    if-nez p0, :cond_0

    .line 951
    const/4 v0, 0x0

    .line 985
    :goto_0
    return-object v0

    .line 953
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 954
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 955
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 957
    if-eqz v2, :cond_1

    .line 962
    if-eqz p2, :cond_3

    instance-of v1, v2, Ljava/lang/Iterable;

    if-eqz v1, :cond_3

    .line 963
    const/4 v4, 0x1

    move-object v1, v2

    .line 964
    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 965
    invoke-static {v6, p1}, Lcom/leanplum/Leanplum;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 966
    const/4 v1, 0x0

    .line 970
    :goto_2
    if-eqz v1, :cond_1

    .line 983
    :goto_3
    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 976
    :cond_3
    instance-of v1, v2, Ljava/util/Date;

    if-eqz v1, :cond_4

    .line 977
    check-cast v2, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 979
    :cond_4
    invoke-static {v2, p1}, Lcom/leanplum/Leanplum;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_3

    :cond_5
    move-object v0, v3

    .line 985
    goto :goto_0

    :cond_6
    move v1, v4

    goto :goto_2
.end method

.method static a()V
    .locals 2

    .prologue
    .line 1003
    invoke-static {}, Lcom/leanplum/cu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1026
    :goto_0
    return-void

    .line 1006
    :cond_0
    sget-boolean v0, Lcom/leanplum/Leanplum;->a:Z

    if-nez v0, :cond_1

    .line 1007
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "You cannot call pause before calling start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1010
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/leanplum/Leanplum;->b:Z

    .line 1012
    sget-boolean v0, Lcom/leanplum/Leanplum;->m:Z

    if-eqz v0, :cond_2

    .line 1013
    invoke-static {}, Lcom/leanplum/Leanplum;->n()V

    goto :goto_0

    .line 1015
    :cond_2
    new-instance v0, Lcom/leanplum/j;

    invoke-direct {v0}, Lcom/leanplum/j;-><init>()V

    invoke-static {v0}, Lcom/leanplum/Leanplum;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/leanplum/callbacks/StartCallback;Ljava/lang/Boolean;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/leanplum/callbacks/StartCallback;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 486
    const-class v4, Lcom/leanplum/Leanplum;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/leanplum/m;->a()Lcom/leanplum/m;

    .line 488
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 489
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    sput-object v1, Lcom/leanplum/LeanplumActivityHelper;->b:Landroid/app/Activity;

    .line 495
    :cond_0
    sget-object v1, Lcom/leanplum/LeanplumActivityHelper;->b:Landroid/app/Activity;

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/leanplum/LeanplumActivityHelper;->a:Z

    if-eqz v1, :cond_2

    :cond_1
    move v1, v3

    .line 501
    :goto_0
    invoke-static {}, Lcom/leanplum/cu;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 502
    const/4 v1, 0x1

    sput-boolean v1, Lcom/leanplum/Leanplum;->n:Z

    .line 503
    const/4 v1, 0x1

    sput-boolean v1, Lcom/leanplum/Leanplum;->o:Z

    .line 504
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/leanplum/Leanplum;->a(Z)V

    .line 505
    invoke-static {}, Lcom/leanplum/Leanplum;->s()V

    .line 506
    invoke-static {}, Lcom/leanplum/Leanplum;->d()V

    .line 507
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2, v3, v5}, Lcom/leanplum/cg;->a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V

    .line 512
    invoke-static {}, Lcom/leanplum/Newsfeed;->a()Lcom/leanplum/Newsfeed;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v5}, Lcom/leanplum/Newsfeed;->a(Ljava/util/Map;IZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    :goto_1
    monitor-exit v4

    return-void

    :cond_2
    move v1, v2

    .line 495
    goto :goto_0

    .line 516
    :cond_3
    if-eqz p3, :cond_4

    .line 517
    :try_start_1
    invoke-static {p3}, Lcom/leanplum/Leanplum;->addStartResponseHandler(Lcom/leanplum/callbacks/StartCallback;)V

    .line 520
    :cond_4
    if-eqz p0, :cond_5

    .line 521
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/leanplum/Leanplum;->setApplicationContext(Landroid/content/Context;)V

    .line 524
    :cond_5
    sget-boolean v2, Lcom/leanplum/Leanplum;->a:Z

    if-eqz v2, :cond_7

    .line 525
    if-nez v1, :cond_6

    sget-boolean v1, Lcom/leanplum/Leanplum;->c:Z

    if-eqz v1, :cond_6

    .line 527
    const/4 v1, 0x0

    sput-boolean v1, Lcom/leanplum/Leanplum;->c:Z

    .line 528
    invoke-static {}, Lcom/leanplum/Leanplum;->m()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 584
    :catch_0
    move-exception v1

    .line 585
    :try_start_2
    invoke-static {v1}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 486
    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1

    .line 530
    :cond_6
    :try_start_3
    const-string/jumbo v1, "Leanplum"

    const-string/jumbo v2, "Already called start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 535
    :cond_7
    const/4 v2, 0x1

    sput-boolean v2, Lcom/leanplum/Leanplum;->t:Z

    .line 536
    invoke-static {}, Lcom/leanplum/Leanplum;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/leanplum/messagetemplates/MessageTemplates;->register(Landroid/content/Context;)V

    .line 538
    sput-boolean v1, Lcom/leanplum/Leanplum;->c:Z

    .line 540
    const-string/jumbo v2, "userAttributes"

    const/4 v3, 0x1

    invoke-static {p2, v2, v3}, Lcom/leanplum/Leanplum;->a(Ljava/util/Map;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v2

    .line 541
    const/4 v3, 0x1

    sput-boolean v3, Lcom/leanplum/Leanplum;->a:Z

    .line 543
    if-eqz v2, :cond_8

    .line 544
    sget-object v3, Lcom/leanplum/Leanplum;->z:Ljava/util/Queue;

    invoke-interface {v3, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 547
    :cond_8
    invoke-static {}, Lcom/leanplum/cq;->a()Lcom/leanplum/cq;

    move-result-object v3

    sput-object v3, Lcom/leanplum/Leanplum;->l:Lcom/leanplum/cq;

    .line 549
    invoke-static {}, Lcom/leanplum/y;->b()V

    .line 550
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/leanplum/cg;->a(Z)V

    .line 551
    invoke-static {}, Lcom/leanplum/cg;->d()V

    .line 552
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/leanplum/cg;->a(Z)V

    .line 553
    invoke-static {}, Lcom/leanplum/Newsfeed;->a()Lcom/leanplum/Newsfeed;

    move-result-object v3

    invoke-virtual {v3}, Lcom/leanplum/Newsfeed;->b()V

    .line 556
    new-instance v3, Lcom/leanplum/ch;

    invoke-direct {v3}, Lcom/leanplum/ch;-><init>()V

    invoke-static {v3}, Lcom/leanplum/cg;->a(Lcom/leanplum/ch;)V

    .line 565
    new-instance v3, Lcom/leanplum/bh;

    invoke-direct {v3}, Lcom/leanplum/bh;-><init>()V

    invoke-static {v3}, Lcom/leanplum/y;->a(Lcom/leanplum/bh;)V

    .line 573
    new-instance v3, Lcom/leanplum/e;

    invoke-direct {v3, p1, v2, v1}, Lcom/leanplum/e;-><init>(Ljava/lang/String;Ljava/util/Map;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-static {v3, v1}, Lcom/leanplum/x;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1
.end method

.method static a(Lcom/leanplum/ActionContext;)V
    .locals 1

    .prologue
    .line 1480
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/leanplum/Leanplum;->a(Lcom/leanplum/ActionContext;Lcom/leanplum/callbacks/VariablesChangedCallback;)V

    .line 1481
    return-void
.end method

.method private static a(Lcom/leanplum/ActionContext;Lcom/leanplum/callbacks/VariablesChangedCallback;)V
    .locals 5

    .prologue
    .line 1486
    sget-object v1, Lcom/leanplum/Leanplum;->i:Ljava/util/Map;

    monitor-enter v1

    .line 1487
    :try_start_0
    sget-object v0, Lcom/leanplum/Leanplum;->i:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/leanplum/ActionContext;->actionName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1488
    if-nez v0, :cond_2

    .line 1490
    if-eqz p1, :cond_0

    .line 1491
    invoke-virtual {p1}, Lcom/leanplum/callbacks/VariablesChangedCallback;->variablesChanged()V

    .line 1493
    :cond_0
    monitor-exit v1

    .line 1510
    :cond_1
    return-void

    .line 1495
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1496
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1497
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 1498
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leanplum/callbacks/ActionCallback;

    .line 1499
    invoke-static {}, Lcom/leanplum/m;->a()Lcom/leanplum/m;

    move-result-object v3

    new-instance v4, Lcom/leanplum/dd;

    invoke-direct {v4, v0, p0, p1, v1}, Lcom/leanplum/dd;-><init>(Lcom/leanplum/callbacks/ActionCallback;Lcom/leanplum/ActionContext;Lcom/leanplum/callbacks/VariablesChangedCallback;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v3, v4}, Lcom/leanplum/m;->a(Ljava/lang/Runnable;)Ljava/lang/Boolean;

    goto :goto_0

    .line 1496
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 1239
    if-nez p0, :cond_0

    .line 1240
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "addStartIssuedHandler - Invalid handler parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    :goto_0
    return-void

    .line 1244
    :cond_0
    sget-object v1, Lcom/leanplum/Leanplum;->e:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1245
    :try_start_0
    sget-boolean v0, Lcom/leanplum/Leanplum;->m:Z

    if-nez v0, :cond_1

    .line 1246
    sget-object v0, Lcom/leanplum/Leanplum;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1247
    monitor-exit v1

    goto :goto_0

    .line 1249
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1250
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method static a(Ljava/lang/RuntimeException;)V
    .locals 3

    .prologue
    .line 934
    sget-boolean v0, Lcom/leanplum/cu;->k:Z

    if-eqz v0, :cond_0

    .line 935
    throw p0

    .line 937
    :cond_0
    const-string/jumbo v0, "Leanplum"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " This error is only thrown in development mode."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 939
    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1756
    invoke-static {}, Lcom/leanplum/cu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1775
    :goto_0
    return-void

    .line 1759
    :cond_0
    new-instance v0, Lcom/leanplum/dh;

    invoke-direct {v0, p0}, Lcom/leanplum/dh;-><init>(Ljava/lang/String;)V

    .line 1774
    sput-object v0, Lcom/leanplum/Leanplum;->A:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/leanplum/Leanplum;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static a(Ljava/lang/String;DLjava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1846
    invoke-static {}, Lcom/leanplum/cu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1879
    :goto_0
    return-void

    .line 1849
    :cond_0
    sget-boolean v0, Lcom/leanplum/Leanplum;->a:Z

    if-nez v0, :cond_1

    .line 1850
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "You cannot call track before calling start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1853
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1854
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "track - Empty event parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    :cond_2
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1859
    if-eqz p5, :cond_3

    .line 1860
    invoke-interface {v0, p5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1862
    :cond_3
    const-string/jumbo v1, "value"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1863
    const-string/jumbo v1, "info"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1864
    if-eqz p0, :cond_4

    .line 1865
    const-string/jumbo v1, "event"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1867
    :cond_4
    if-eqz p4, :cond_5

    .line 1868
    const-string/jumbo v1, "params"

    const/4 v2, 0x0

    invoke-static {p4, v1, v2}, Lcom/leanplum/Leanplum;->a(Ljava/util/Map;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p4

    .line 1869
    const-string/jumbo v1, "params"

    invoke-static {p4}, Lcom/leanplum/co;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1871
    :cond_5
    sget-boolean v1, Lcom/leanplum/Leanplum;->u:Z

    if-eqz v1, :cond_6

    sget-boolean v1, Lcom/leanplum/LeanplumActivityHelper;->a:Z

    if-eqz v1, :cond_7

    .line 1872
    :cond_6
    const-string/jumbo v1, "allowOffline"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3890
    :cond_7
    sget-boolean v1, Lcom/leanplum/Leanplum;->m:Z

    if-eqz v1, :cond_8

    .line 3891
    invoke-static {p0, p4, v0}, Lcom/leanplum/Leanplum;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1876
    :catch_0
    move-exception v0

    .line 1877
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3893
    :cond_8
    :try_start_1
    new-instance v1, Lcom/leanplum/dj;

    invoke-direct {v1, p0, p4, v0}, Lcom/leanplum/dj;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    invoke-static {v1}, Lcom/leanplum/Leanplum;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/String;ILcom/leanplum/ActionArgs;Ljava/util/Map;Lcom/leanplum/callbacks/ActionCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/leanplum/ActionArgs;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/leanplum/callbacks/ActionCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1427
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1428
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "defineAction - Empty name parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    :cond_0
    :goto_0
    return-void

    .line 1431
    :cond_1
    if-nez p2, :cond_2

    .line 1432
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "defineAction - Invalid args parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1437
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/leanplum/Leanplum;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1438
    sget-boolean v1, Lcom/leanplum/Leanplum;->t:Z

    if-nez v1, :cond_3

    .line 1439
    const/4 v1, 0x1

    sput-boolean v1, Lcom/leanplum/Leanplum;->t:Z

    .line 1440
    invoke-static {v0}, Lcom/leanplum/messagetemplates/MessageTemplates;->register(Landroid/content/Context;)V

    .line 1444
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1446
    sget-object v1, Lcom/leanplum/Leanplum;->i:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    invoke-virtual {p2}, Lcom/leanplum/ActionArgs;->a()Ljava/util/List;

    move-result-object v1

    invoke-static {p0, p1, v1, v0}, Lcom/leanplum/cg;->a(Ljava/lang/String;ILjava/util/List;Ljava/util/Map;)V

    .line 1448
    if-eqz p4, :cond_0

    .line 1449
    invoke-static {p0, p4}, Lcom/leanplum/Leanplum;->onAction(Ljava/lang/String;Lcom/leanplum/callbacks/ActionCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1451
    :catch_0
    move-exception v0

    .line 1452
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1635
    invoke-static {}, Lcom/leanplum/cg;->m()Ljava/util/Map;

    move-result-object v0

    .line 1636
    if-nez v0, :cond_1

    .line 1648
    :cond_0
    :goto_0
    return-void

    .line 1639
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1640
    if-eqz v0, :cond_0

    .line 1643
    new-instance v1, Lcom/leanplum/ActionContext;

    const-string/jumbo v2, "action"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "vars"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v2, v0, p1}, Lcom/leanplum/ActionContext;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 1647
    invoke-virtual {v1, p0}, Lcom/leanplum/ActionContext;->runTrackedActionNamed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/leanplum/cp;)V
    .locals 2

    .prologue
    .line 1514
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1, p2, p3, p4}, Lcom/leanplum/Leanplum;->a([Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/leanplum/cp;)V

    .line 1515
    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcom/leanplum/Leanplum;->b(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 49
    invoke-static {p0, p1, p2}, Lcom/leanplum/Leanplum;->c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 7

    .prologue
    .line 49
    .line 4591
    invoke-static {}, Lcom/leanplum/LeanplumPushService;->b()V

    .line 4593
    const/4 v1, 0x0

    .line 4594
    invoke-static {}, Lcom/leanplum/y;->e()Ljava/lang/String;

    move-result-object v0

    .line 4595
    if-nez v0, :cond_0

    .line 4596
    sget-boolean v0, Lcom/leanplum/Leanplum;->s:Z

    if-nez v0, :cond_7

    sget-object v0, Lcom/leanplum/cu;->i:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 4597
    sget-object v0, Lcom/leanplum/cu;->i:Ljava/lang/String;

    .line 4605
    :goto_0
    invoke-static {v0}, Lcom/leanplum/y;->a(Ljava/lang/String;)V

    .line 4608
    :cond_0
    if-nez p0, :cond_1

    .line 4609
    invoke-static {}, Lcom/leanplum/y;->f()Ljava/lang/String;

    move-result-object p0

    .line 4610
    if-nez p0, :cond_1

    .line 4611
    invoke-static {}, Lcom/leanplum/y;->e()Ljava/lang/String;

    move-result-object p0

    .line 4614
    :cond_1
    invoke-static {p0}, Lcom/leanplum/y;->b(Ljava/lang/String;)V

    .line 4617
    invoke-static {}, Lcom/leanplum/x;->a()Ljava/lang/String;

    move-result-object v0

    .line 4618
    if-nez v0, :cond_2

    .line 4619
    const-string/jumbo v0, ""

    .line 4622
    :cond_2
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 4623
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 4624
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    .line 4626
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 4627
    const-string/jumbo v5, "includeDefaults"

    const-string/jumbo v6, "false"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4628
    if-eqz p2, :cond_3

    .line 4629
    const-string/jumbo v5, "background"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4631
    :cond_3
    const-string/jumbo v5, "versionName"

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4632
    const-string/jumbo v0, "deviceName"

    invoke-static {}, Lcom/leanplum/x;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4633
    const-string/jumbo v0, "deviceModel"

    invoke-static {}, Lcom/leanplum/x;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4634
    const-string/jumbo v0, "systemName"

    invoke-static {}, Lcom/leanplum/x;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4635
    const-string/jumbo v0, "systemVersion"

    invoke-static {}, Lcom/leanplum/x;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4636
    const-string/jumbo v0, "timezone"

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4637
    const-string/jumbo v0, "timezoneOffsetSeconds"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4638
    const-string/jumbo v0, "locale"

    invoke-static {}, Lcom/leanplum/x;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4639
    const-string/jumbo v0, "country"

    const-string/jumbo v2, "(detect)"

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4640
    const-string/jumbo v0, "region"

    const-string/jumbo v2, "(detect)"

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4641
    const-string/jumbo v0, "city"

    const-string/jumbo v2, "(detect)"

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4642
    const-string/jumbo v0, "location"

    const-string/jumbo v2, "(detect)"

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4643
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4644
    const-string/jumbo v0, "limitTracking"

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4646
    :cond_4
    if-eqz p1, :cond_5

    .line 4647
    const-string/jumbo v0, "userAttributes"

    invoke-static {p1}, Lcom/leanplum/co;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4649
    :cond_5
    sget-boolean v0, Lcom/leanplum/cu;->k:Z

    if-eqz v0, :cond_6

    .line 4650
    const-string/jumbo v0, "devMode"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4654
    :cond_6
    const-string/jumbo v0, "newsfeedMessages"

    invoke-static {}, Lcom/leanplum/Newsfeed;->a()Lcom/leanplum/Newsfeed;

    move-result-object v1

    invoke-virtual {v1}, Lcom/leanplum/Newsfeed;->messagesIds()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4656
    invoke-static {v4}, Lcom/leanplum/x;->a(Ljava/util/Map;)V

    .line 4659
    const-string/jumbo v0, "start"

    invoke-static {v0, v4}, Lcom/leanplum/y;->b(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/y;

    move-result-object v0

    .line 4660
    new-instance v1, Lcom/leanplum/bf;

    invoke-direct {v1}, Lcom/leanplum/bf;-><init>()V

    invoke-static {v1}, Lcom/leanplum/y;->a(Lcom/leanplum/bf;)V

    .line 4667
    if-eqz p2, :cond_9

    .line 4668
    invoke-virtual {v0}, Lcom/leanplum/y;->k()V

    .line 4673
    :goto_1
    invoke-static {}, Lcom/leanplum/Leanplum;->r()V

    .line 49
    return-void

    .line 4598
    :cond_7
    sget-object v0, Lcom/leanplum/Leanplum;->r:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 4599
    sget-object v0, Lcom/leanplum/Leanplum;->r:Ljava/lang/String;

    goto/16 :goto_0

    .line 4601
    :cond_8
    sget-object v0, Lcom/leanplum/Leanplum;->q:Lcom/leanplum/LeanplumDeviceIdMode;

    invoke-static {v0}, Lcom/leanplum/x;->a(Lcom/leanplum/LeanplumDeviceIdMode;)Lcom/leanplum/Util$DeviceIdInfo;

    move-result-object v1

    .line 4602
    iget-object v0, v1, Lcom/leanplum/Util$DeviceIdInfo;->a:Ljava/lang/String;

    .line 4603
    iget-boolean v1, v1, Lcom/leanplum/Util$DeviceIdInfo;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 4670
    :cond_9
    invoke-virtual {v0}, Lcom/leanplum/y;->j()V

    goto :goto_1
.end method

.method static synthetic a(Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 49
    invoke-static {p0}, Lcom/leanplum/Leanplum;->b(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic a(Lorg/json/JSONObject;Ljava/util/List;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 49
    .line 4682
    :try_start_0
    invoke-static {p0}, Lcom/leanplum/y;->a(Lorg/json/JSONObject;)I

    move-result v5

    .line 4683
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    :goto_0
    if-ltz v4, :cond_2

    .line 4684
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 4685
    const-string/jumbo v6, "start"

    const-string/jumbo v7, "action"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4686
    if-ge v4, v5, :cond_11

    .line 4687
    invoke-static {p0, v4}, Lcom/leanplum/y;->a(Lorg/json/JSONObject;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v4, v0

    move v0, v2

    .line 4697
    :goto_2
    if-eqz v0, :cond_0

    .line 4698
    sget-boolean v0, Lcom/leanplum/Leanplum;->n:Z

    if-nez v0, :cond_0

    .line 4705
    invoke-static {v4}, Lcom/leanplum/y;->c(Lorg/json/JSONObject;)Z

    move-result v0

    .line 4706
    if-nez v0, :cond_3

    .line 4708
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/leanplum/Leanplum;->n:Z

    .line 4709
    const/4 v0, 0x0

    sput-boolean v0, Lcom/leanplum/Leanplum;->o:Z

    .line 4712
    invoke-static {}, Lcom/leanplum/cg;->d()V

    .line 4714
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/leanplum/Leanplum;->a(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 4867
    :cond_0
    :goto_3
    return-void

    .line 4683
    :cond_1
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_0

    :cond_2
    move-object v4, v1

    move v0, v3

    .line 4695
    goto :goto_2

    .line 4693
    :catch_0
    move-exception v0

    .line 4694
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    move-object v4, v1

    move v0, v3

    goto :goto_2

    .line 4715
    :catch_1
    move-exception v0

    .line 4716
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 4720
    :cond_3
    const/4 v0, 0x1

    :try_start_2
    sput-boolean v0, Lcom/leanplum/Leanplum;->n:Z

    .line 4721
    const/4 v0, 0x1

    sput-boolean v0, Lcom/leanplum/Leanplum;->o:Z

    .line 4723
    const-string/jumbo v0, "vars"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 4724
    if-nez v0, :cond_10

    .line 4725
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "No variable values were received from the server. Please contact us to investigate."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4727
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v3, v0

    .line 4730
    :goto_4
    const-string/jumbo v0, "messages"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 4731
    if-nez v0, :cond_f

    .line 4732
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v0

    .line 4735
    :goto_5
    const-string/jumbo v0, "regions"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 4736
    if-nez v0, :cond_e

    .line 4737
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v0

    .line 4740
    :goto_6
    const-string/jumbo v0, "variants"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 4741
    if-nez v0, :cond_4

    .line 4742
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 4745
    :cond_4
    const-string/jumbo v5, "token"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4746
    invoke-static {v5}, Lcom/leanplum/y;->c(Ljava/lang/String;)V

    .line 4747
    invoke-static {}, Lcom/leanplum/y;->c()V

    .line 4749
    invoke-static {v3}, Lcom/leanplum/co;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v2}, Lcom/leanplum/co;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Lcom/leanplum/co;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Lcom/leanplum/co;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    invoke-static {v3, v2, v1, v0}, Lcom/leanplum/cg;->a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V

    .line 4754
    invoke-static {}, Lcom/leanplum/cg;->o()V

    .line 4755
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/leanplum/Leanplum;->a(Z)V

    .line 4757
    const-string/jumbo v0, "syncNewsfeed"

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4758
    invoke-static {}, Lcom/leanplum/Newsfeed;->a()Lcom/leanplum/Newsfeed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leanplum/Newsfeed;->c()V

    .line 4762
    :cond_5
    sget-boolean v0, Lcom/leanplum/cu;->k:Z

    if-eqz v0, :cond_a

    .line 4764
    sget-object v0, Lcom/leanplum/LeanplumActivityHelper;->b:Landroid/app/Activity;

    sget-object v1, Lcom/leanplum/Leanplum;->y:Landroid/content/Context;

    if-eq v0, v1, :cond_b

    sget-object v0, Lcom/leanplum/LeanplumActivityHelper;->b:Landroid/app/Activity;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/leanplum/LeanplumActivityHelper;->b:Landroid/app/Activity;

    .line 4771
    :goto_7
    const-string/jumbo v1, "isRegistered"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/leanplum/Leanplum;->j:Lcom/leanplum/callbacks/RegisterDeviceCallback;

    if-eqz v1, :cond_6

    .line 4773
    sget-object v1, Lcom/leanplum/Leanplum;->j:Lcom/leanplum/callbacks/RegisterDeviceCallback;

    new-instance v2, Lcom/leanplum/f;

    invoke-direct {v2}, Lcom/leanplum/f;-><init>()V

    invoke-virtual {v1, v2}, Lcom/leanplum/callbacks/RegisterDeviceCallback;->setResponseHandler(Lcom/leanplum/callbacks/RegisterDeviceCallback$EmailCallback;)V

    .line 4800
    invoke-static {}, Lcom/leanplum/m;->a()Lcom/leanplum/m;

    move-result-object v1

    sget-object v2, Lcom/leanplum/Leanplum;->j:Lcom/leanplum/callbacks/RegisterDeviceCallback;

    invoke-virtual {v1, v2}, Lcom/leanplum/m;->a(Ljava/lang/Runnable;)Ljava/lang/Boolean;

    .line 4804
    :cond_6
    const-string/jumbo v1, "isRegisteredFromOtherApp"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4805
    invoke-static {}, Lcom/leanplum/m;->a()Lcom/leanplum/m;

    move-result-object v1

    new-instance v2, Lcom/leanplum/i;

    invoke-direct {v2, v0}, Lcom/leanplum/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/leanplum/m;->a(Ljava/lang/Runnable;)Ljava/lang/Boolean;

    .line 4828
    :cond_7
    const-string/jumbo v0, "isRegistered"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 4831
    const-string/jumbo v0, "latestVersion"

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4832
    if-eqz v3, :cond_8

    if-eqz v0, :cond_8

    .line 4833
    const-string/jumbo v1, "Leanplum"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "An update to Leanplum Android SDK, "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", is available. Go to leanplum.com to download it."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4837
    :cond_8
    const-string/jumbo v0, "varsFromCode"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 4838
    if-nez v0, :cond_d

    .line 4839
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v0

    .line 4842
    :goto_8
    const-string/jumbo v0, "actionDefinitions"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 4844
    if-nez v0, :cond_c

    .line 4845
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v0

    .line 4848
    :goto_9
    const-string/jumbo v0, "fileAttributes"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 4849
    if-nez v0, :cond_9

    .line 4850
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4853
    :cond_9
    invoke-static {v2}, Lcom/leanplum/co;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Lcom/leanplum/co;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1}, Lcom/leanplum/co;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/leanplum/cg;->a(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 4858
    if-eqz v3, :cond_a

    .line 4859
    invoke-static {}, Lcom/leanplum/Leanplum;->c()V

    .line 4863
    :cond_a
    invoke-static {}, Lcom/leanplum/Leanplum;->m()V

    .line 4864
    invoke-static {}, Lcom/leanplum/Leanplum;->p()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    .line 4865
    :catch_2
    move-exception v0

    .line 4866
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 4764
    :cond_b
    :try_start_3
    sget-object v0, Lcom/leanplum/Leanplum;->y:Landroid/content/Context;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_7

    :cond_c
    move-object v1, v0

    goto :goto_9

    :cond_d
    move-object v2, v0

    goto :goto_8

    :cond_e
    move-object v1, v0

    goto/16 :goto_6

    :cond_f
    move-object v2, v0

    goto/16 :goto_5

    :cond_10
    move-object v3, v0

    goto/16 :goto_4

    :cond_11
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private static a(Z)V
    .locals 4

    .prologue
    .line 1229
    sget-object v1, Lcom/leanplum/Leanplum;->d:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1230
    :try_start_0
    sget-object v0, Lcom/leanplum/Leanplum;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leanplum/callbacks/StartCallback;

    .line 1231
    invoke-virtual {v0, p0}, Lcom/leanplum/callbacks/StartCallback;->setSuccess(Z)V

    .line 1232
    invoke-static {}, Lcom/leanplum/m;->a()Lcom/leanplum/m;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/leanplum/m;->a(Ljava/lang/Runnable;)Ljava/lang/Boolean;

    goto :goto_0

    .line 1235
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1234
    :cond_0
    :try_start_1
    sget-object v0, Lcom/leanplum/Leanplum;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1235
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private static a([Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/leanplum/cp;)V
    .locals 13

    .prologue
    .line 1520
    invoke-static {}, Lcom/leanplum/cg;->m()Ljava/util/Map;

    move-result-object v8

    .line 1521
    if-nez v8, :cond_1

    .line 1613
    :cond_0
    return-void

    .line 1525
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1526
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1527
    if-eqz v2, :cond_3

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1531
    :cond_3
    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 1533
    const-string/jumbo v1, "action"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1534
    if-eqz v1, :cond_2

    .line 1538
    const-string/jumbo v4, "__Push Notification"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x1

    .line 1539
    :goto_1
    if-eqz v1, :cond_4

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_2

    .line 1544
    :cond_4
    new-instance v11, Lcom/leanplum/ct;

    invoke-direct {v11}, Lcom/leanplum/ct;-><init>()V

    .line 1545
    array-length v12, p0

    const/4 v1, 0x0

    move v7, v1

    :goto_2
    if-ge v7, v12, :cond_6

    aget-object v4, p0, v7

    .line 1546
    sget-object v1, Lcom/leanplum/Leanplum;->l:Lcom/leanplum/cq;

    move-object v5, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/leanplum/cq;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lcom/leanplum/cp;)Lcom/leanplum/ct;

    move-result-object v1

    .line 1548
    iget-boolean v4, v11, Lcom/leanplum/ct;->a:Z

    iget-boolean v5, v1, Lcom/leanplum/ct;->a:Z

    or-int/2addr v4, v5

    iput-boolean v4, v11, Lcom/leanplum/ct;->a:Z

    .line 1549
    iget-boolean v4, v11, Lcom/leanplum/ct;->b:Z

    iget-boolean v5, v1, Lcom/leanplum/ct;->b:Z

    or-int/2addr v4, v5

    iput-boolean v4, v11, Lcom/leanplum/ct;->b:Z

    .line 1550
    iget-boolean v4, v11, Lcom/leanplum/ct;->c:Z

    iget-boolean v1, v1, Lcom/leanplum/ct;->c:Z

    or-int/2addr v1, v4

    iput-boolean v1, v11, Lcom/leanplum/ct;->c:Z

    .line 1545
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_2

    .line 1538
    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 1554
    :cond_6
    iget-boolean v1, v11, Lcom/leanplum/ct;->b:Z

    if-eqz v1, :cond_7

    .line 1555
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "__Cancel"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "action"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1556
    new-instance v4, Lcom/leanplum/ActionContext;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v4, v1, v5, v2}, Lcom/leanplum/ActionContext;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    new-instance v1, Lcom/leanplum/de;

    invoke-direct {v1, v2}, Lcom/leanplum/de;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v1}, Lcom/leanplum/Leanplum;->a(Lcom/leanplum/ActionContext;Lcom/leanplum/callbacks/VariablesChangedCallback;)V

    .line 1573
    :cond_7
    iget-boolean v1, v11, Lcom/leanplum/ct;->a:Z

    if-eqz v1, :cond_2

    .line 1574
    sget-object v1, Lcom/leanplum/Leanplum;->l:Lcom/leanplum/cq;

    invoke-virtual {v1, v2}, Lcom/leanplum/cq;->a(Ljava/lang/String;)V

    .line 1576
    iget-boolean v1, v11, Lcom/leanplum/ct;->c:Z

    if-eqz v1, :cond_2

    .line 1578
    const-string/jumbo v1, "priority"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1579
    const-string/jumbo v1, "priority"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move v4, v1

    .line 1583
    :goto_3
    new-instance v5, Lcom/leanplum/ActionContext;

    const-string/jumbo v1, "action"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v1, "vars"

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {v5, v6, v1, v2, v4}, Lcom/leanplum/ActionContext;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    .line 1586
    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Lcom/leanplum/ActionContext;->a(Lcom/leanplum/cp;)V

    .line 1587
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1581
    :cond_8
    const/16 v1, 0x3e8

    move v4, v1

    goto :goto_3

    .line 1592
    :cond_9
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1593
    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1594
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/leanplum/ActionContext;

    invoke-virtual {v1}, Lcom/leanplum/ActionContext;->d()I

    move-result v2

    .line 1595
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/leanplum/ActionContext;

    .line 1596
    invoke-virtual {v1}, Lcom/leanplum/ActionContext;->d()I

    move-result v4

    .line 1597
    if-gt v4, v2, :cond_0

    .line 1598
    new-instance v4, Lcom/leanplum/df;

    invoke-direct {v4, v1}, Lcom/leanplum/df;-><init>(Lcom/leanplum/ActionContext;)V

    invoke-static {v1, v4}, Lcom/leanplum/Leanplum;->a(Lcom/leanplum/ActionContext;Lcom/leanplum/callbacks/VariablesChangedCallback;)V

    goto :goto_4
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 990
    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 991
    new-instance v0, Lcom/leanplum/LeanplumException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " values must be of type String, Number, or Boolean."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/leanplum/LeanplumException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/leanplum/Leanplum;->a(Ljava/lang/RuntimeException;)V

    .line 993
    const/4 v0, 0x0

    .line 995
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static addOnceVariablesChangedAndNoDownloadsPendingHandler(Lcom/leanplum/callbacks/VariablesChangedCallback;)V
    .locals 2

    .prologue
    .line 1347
    if-nez p0, :cond_0

    .line 1348
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "addOnceVariablesChangedAndNoDownloadsPendingHandler - Invalid handler parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    :goto_0
    return-void

    .line 1353
    :cond_0
    invoke-static {}, Lcom/leanplum/cg;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/leanplum/y;->l()I

    move-result v0

    if-nez v0, :cond_1

    .line 1355
    invoke-virtual {p0}, Lcom/leanplum/callbacks/VariablesChangedCallback;->variablesChanged()V

    goto :goto_0

    .line 1357
    :cond_1
    sget-object v1, Lcom/leanplum/Leanplum;->h:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1358
    :try_start_0
    sget-object v0, Lcom/leanplum/Leanplum;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1359
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static addStartResponseHandler(Lcom/leanplum/callbacks/StartCallback;)V
    .locals 3

    .prologue
    .line 1195
    if-nez p0, :cond_0

    .line 1196
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "addStartResponseHandler - Invalid handler parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    :goto_0
    return-void

    .line 1200
    :cond_0
    sget-boolean v0, Lcom/leanplum/Leanplum;->n:Z

    if-eqz v0, :cond_2

    .line 1201
    sget-boolean v0, Lcom/leanplum/Leanplum;->o:Z

    if-eqz v0, :cond_1

    .line 1202
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/leanplum/callbacks/StartCallback;->setSuccess(Z)V

    .line 1204
    :cond_1
    invoke-virtual {p0}, Lcom/leanplum/callbacks/StartCallback;->run()V

    goto :goto_0

    .line 1206
    :cond_2
    sget-object v1, Lcom/leanplum/Leanplum;->d:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1207
    :try_start_0
    sget-object v0, Lcom/leanplum/Leanplum;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 1208
    sget-object v0, Lcom/leanplum/Leanplum;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1210
    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static addVariablesChangedAndNoDownloadsPendingHandler(Lcom/leanplum/callbacks/VariablesChangedCallback;)V
    .locals 2

    .prologue
    .line 1310
    if-nez p0, :cond_1

    .line 1311
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "addVariablesChangedAndNoDownloadsPendingHandler - Invalid handler parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    :cond_0
    :goto_0
    return-void

    .line 1316
    :cond_1
    sget-object v1, Lcom/leanplum/Leanplum;->g:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1317
    :try_start_0
    sget-object v0, Lcom/leanplum/Leanplum;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1318
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1319
    invoke-static {}, Lcom/leanplum/cg;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/leanplum/y;->l()I

    move-result v0

    if-nez v0, :cond_0

    .line 1321
    invoke-virtual {p0}, Lcom/leanplum/callbacks/VariablesChangedCallback;->variablesChanged()V

    goto :goto_0

    .line 1318
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static addVariablesChangedHandler(Lcom/leanplum/callbacks/VariablesChangedCallback;)V
    .locals 2

    .prologue
    .line 1269
    if-nez p0, :cond_1

    .line 1270
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "addVariablesChangedHandler - Invalid handler parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    :cond_0
    :goto_0
    return-void

    .line 1274
    :cond_1
    sget-object v1, Lcom/leanplum/Leanplum;->f:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1275
    :try_start_0
    sget-object v0, Lcom/leanplum/Leanplum;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1276
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1277
    invoke-static {}, Lcom/leanplum/cg;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1278
    invoke-virtual {p0}, Lcom/leanplum/callbacks/VariablesChangedCallback;->variablesChanged()V

    goto :goto_0

    .line 1276
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static advanceTo(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2165
    const-string/jumbo v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/leanplum/Leanplum;->advanceTo(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2166
    return-void
.end method

.method public static advanceTo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 2178
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/leanplum/Leanplum;->advanceTo(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2179
    return-void
.end method

.method public static advanceTo(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 2097
    invoke-static {}, Lcom/leanplum/cu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2138
    :goto_0
    return-void

    .line 2100
    :cond_0
    sget-boolean v0, Lcom/leanplum/Leanplum;->a:Z

    if-nez v0, :cond_1

    .line 2101
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "You cannot call advanceTo before calling start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2104
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2105
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "advanceTo - Empty state parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2110
    :cond_2
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2111
    const-string/jumbo v0, "info"

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2112
    const-string/jumbo v0, "state"

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2114
    if-eqz p2, :cond_3

    .line 2115
    const-string/jumbo v0, "params"

    const/4 v2, 0x0

    invoke-static {p2, v0, v2}, Lcom/leanplum/Leanplum;->a(Ljava/util/Map;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    .line 2116
    const-string/jumbo v2, "params"

    invoke-static {v0}, Lcom/leanplum/co;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2121
    :goto_1
    sget-boolean v2, Lcom/leanplum/Leanplum;->m:Z

    if-eqz v2, :cond_4

    .line 2122
    invoke-static {p0, v0, v1}, Lcom/leanplum/Leanplum;->d(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2135
    :catch_0
    move-exception v0

    .line 2136
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2118
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 2124
    :cond_4
    :try_start_1
    new-instance v2, Lcom/leanplum/dk;

    invoke-direct {v2, p0, v0, v1}, Lcom/leanplum/dk;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    invoke-static {v2}, Lcom/leanplum/Leanplum;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static advanceTo(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 2191
    const-string/jumbo v0, ""

    invoke-static {p0, v0, p1}, Lcom/leanplum/Leanplum;->advanceTo(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2192
    return-void
.end method

.method static b()V
    .locals 2

    .prologue
    .line 1038
    invoke-static {}, Lcom/leanplum/cu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1061
    :goto_0
    return-void

    .line 1041
    :cond_0
    sget-boolean v0, Lcom/leanplum/Leanplum;->a:Z

    if-nez v0, :cond_1

    .line 1042
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "You cannot call resume before calling start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1045
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/leanplum/Leanplum;->b:Z

    .line 1047
    sget-boolean v0, Lcom/leanplum/Leanplum;->m:Z

    if-eqz v0, :cond_2

    .line 1048
    invoke-static {}, Lcom/leanplum/Leanplum;->o()V

    goto :goto_0

    .line 1050
    :cond_2
    new-instance v0, Lcom/leanplum/k;

    invoke-direct {v0}, Lcom/leanplum/k;-><init>()V

    invoke-static {v0}, Lcom/leanplum/Leanplum;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1693
    const-string/jumbo v0, "setUserAttributes"

    invoke-static {v0, p1}, Lcom/leanplum/y;->b(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leanplum/y;->g()V

    .line 1694
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1695
    invoke-static {p0}, Lcom/leanplum/y;->b(Ljava/lang/String;)V

    .line 1696
    sget-boolean v0, Lcom/leanplum/Leanplum;->n:Z

    if-eqz v0, :cond_0

    .line 1697
    invoke-static {}, Lcom/leanplum/cg;->e()V

    .line 1700
    :cond_0
    invoke-static {}, Lcom/leanplum/Leanplum;->t()V

    .line 1701
    return-void
.end method

.method static synthetic b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 49
    invoke-static {p0, p1, p2}, Lcom/leanplum/Leanplum;->d(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method private static b(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1819
    const-string/jumbo v0, "setTrafficSourceInfo"

    invoke-static {v0, p0}, Lcom/leanplum/y;->b(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leanplum/y;->g()V

    .line 1820
    return-void
.end method

.method static c()V
    .locals 2

    .prologue
    .line 1166
    sget-object v1, Lcom/leanplum/g;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 1167
    :try_start_0
    invoke-static {}, Lcom/leanplum/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1168
    new-instance v0, Lcom/leanplum/cz;

    invoke-direct {v0}, Lcom/leanplum/cz;-><init>()V

    invoke-static {v0}, Lcom/leanplum/g;->a(Lcom/leanplum/cz;)V

    .line 1181
    :goto_0
    monitor-exit v1

    return-void

    .line 1179
    :cond_0
    invoke-static {}, Lcom/leanplum/Leanplum;->q()V

    goto :goto_0

    .line 1181
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static c(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1914
    const-string/jumbo v0, "track"

    invoke-static {v0, p2}, Lcom/leanplum/y;->b(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leanplum/y;->g()V

    .line 1917
    const/4 v0, 0x0

    .line 1918
    const-string/jumbo v1, "messageId"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1919
    const-string/jumbo v0, "messageId"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1920
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, ".m"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1921
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1922
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1926
    :cond_0
    :goto_0
    new-instance v1, Lcom/leanplum/cp;

    invoke-direct {v1}, Lcom/leanplum/cp;-><init>()V

    .line 1927
    iput-object p1, v1, Lcom/leanplum/cp;->a:Ljava/util/Map;

    .line 1929
    const-string/jumbo v2, "event"

    const/4 v3, 0x3

    invoke-static {v2, p0, v3, v0, v1}, Lcom/leanplum/Leanplum;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/leanplum/cp;)V

    .line 1931
    return-void

    :cond_1
    move-object p0, v1

    goto :goto_0
.end method

.method static d()V
    .locals 4

    .prologue
    .line 1380
    sget-object v1, Lcom/leanplum/Leanplum;->g:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1381
    :try_start_0
    sget-object v0, Lcom/leanplum/Leanplum;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leanplum/callbacks/VariablesChangedCallback;

    .line 1382
    invoke-static {}, Lcom/leanplum/m;->a()Lcom/leanplum/m;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/leanplum/m;->a(Ljava/lang/Runnable;)Ljava/lang/Boolean;

    goto :goto_0

    .line 1384
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1385
    sget-object v1, Lcom/leanplum/Leanplum;->h:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1386
    :try_start_2
    sget-object v0, Lcom/leanplum/Leanplum;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leanplum/callbacks/VariablesChangedCallback;

    .line 1387
    invoke-static {}, Lcom/leanplum/m;->a()Lcom/leanplum/m;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/leanplum/m;->a(Ljava/lang/Runnable;)Ljava/lang/Boolean;

    goto :goto_1

    .line 1390
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 1389
    :cond_1
    :try_start_3
    sget-object v0, Lcom/leanplum/Leanplum;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1390
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void
.end method

.method private static d(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2148
    const-string/jumbo v0, "advance"

    invoke-static {v0, p2}, Lcom/leanplum/y;->b(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leanplum/y;->g()V

    .line 2150
    new-instance v0, Lcom/leanplum/cp;

    invoke-direct {v0}, Lcom/leanplum/cp;-><init>()V

    .line 2151
    iput-object p1, v0, Lcom/leanplum/cp;->a:Ljava/util/Map;

    .line 2153
    const-string/jumbo v1, "state"

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v1, p0, v2, v3, v0}, Lcom/leanplum/Leanplum;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/leanplum/cp;)V

    .line 2155
    return-void
.end method

.method public static defineAction(Ljava/lang/String;ILcom/leanplum/ActionArgs;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1402
    invoke-static {p0, p1, p2, v0, v0}, Lcom/leanplum/Leanplum;->a(Ljava/lang/String;ILcom/leanplum/ActionArgs;Ljava/util/Map;Lcom/leanplum/callbacks/ActionCallback;)V

    .line 1403
    return-void
.end method

.method public static defineAction(Ljava/lang/String;ILcom/leanplum/ActionArgs;Lcom/leanplum/callbacks/ActionCallback;)V
    .locals 1

    .prologue
    .line 1422
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/leanplum/Leanplum;->a(Ljava/lang/String;ILcom/leanplum/ActionArgs;Ljava/util/Map;Lcom/leanplum/callbacks/ActionCallback;)V

    .line 1423
    return-void
.end method

.method static synthetic e()V
    .locals 0

    .prologue
    .line 49
    invoke-static {}, Lcom/leanplum/Leanplum;->s()V

    return-void
.end method

.method public static enableTestMode()V
    .locals 1

    .prologue
    .line 2350
    const/4 v0, 0x1

    sput-boolean v0, Lcom/leanplum/cu;->l:Z

    .line 2351
    return-void
.end method

.method public static enableVerboseLoggingInDevelopmentMode()V
    .locals 1

    .prologue
    .line 196
    const/4 v0, 0x1

    sput-boolean v0, Lcom/leanplum/cu;->m:Z

    .line 197
    return-void
.end method

.method static synthetic f()Lcom/leanplum/callbacks/RegisterDeviceFinishedCallback;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/leanplum/Leanplum;->k:Lcom/leanplum/callbacks/RegisterDeviceFinishedCallback;

    return-object v0
.end method

.method public static forceContentUpdate()V
    .locals 1

    .prologue
    .line 2274
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/leanplum/Leanplum;->forceContentUpdate(Lcom/leanplum/callbacks/VariablesChangedCallback;)V

    .line 2275
    return-void
.end method

.method public static forceContentUpdate(Lcom/leanplum/callbacks/VariablesChangedCallback;)V
    .locals 3

    .prologue
    .line 2287
    invoke-static {}, Lcom/leanplum/cu;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2288
    if-eqz p0, :cond_0

    .line 2289
    invoke-static {}, Lcom/leanplum/m;->a()Lcom/leanplum/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/leanplum/m;->a(Ljava/lang/Runnable;)Ljava/lang/Boolean;

    .line 2343
    :cond_0
    :goto_0
    return-void

    .line 2294
    :cond_1
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2295
    const-string/jumbo v1, "includeDefaults"

    const-string/jumbo v2, "false"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2296
    const-string/jumbo v1, "newsfeedMessages"

    invoke-static {}, Lcom/leanplum/Newsfeed;->a()Lcom/leanplum/Newsfeed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/leanplum/Newsfeed;->messagesIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2297
    const-string/jumbo v1, "getVars"

    invoke-static {v1, v0}, Lcom/leanplum/y;->b(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/y;

    move-result-object v0

    .line 2298
    new-instance v1, Lcom/leanplum/c;

    invoke-direct {v1, p0}, Lcom/leanplum/c;-><init>(Lcom/leanplum/callbacks/VariablesChangedCallback;)V

    invoke-virtual {v0, v1}, Lcom/leanplum/y;->a(Lcom/leanplum/bi;)V

    .line 2331
    new-instance v1, Lcom/leanplum/d;

    invoke-direct {v1, p0}, Lcom/leanplum/d;-><init>(Lcom/leanplum/callbacks/VariablesChangedCallback;)V

    invoke-virtual {v0, v1}, Lcom/leanplum/y;->a(Lcom/leanplum/bg;)V

    .line 2339
    invoke-virtual {v0}, Lcom/leanplum/y;->j()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2340
    :catch_0
    move-exception v0

    .line 2341
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic g()V
    .locals 0

    .prologue
    .line 49
    invoke-static {}, Lcom/leanplum/Leanplum;->n()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 309
    sget-object v0, Lcom/leanplum/Leanplum;->y:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 310
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "Your application context is not set. You should call Leanplum.setApplicationContext(this) or LeanplumActivityHelper.enableLifecycleCallbacks(this) in your application\'s onCreate method, or have your application extend LeanplumApplication."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_0
    sget-object v0, Lcom/leanplum/Leanplum;->y:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h()V
    .locals 0

    .prologue
    .line 49
    invoke-static {}, Lcom/leanplum/Leanplum;->o()V

    return-void
.end method

.method public static hasStarted()Z
    .locals 1

    .prologue
    .line 1143
    sget-boolean v0, Lcom/leanplum/Leanplum;->n:Z

    return v0
.end method

.method public static hasStartedAndRegisteredAsDeveloper()Z
    .locals 1

    .prologue
    .line 1158
    sget-boolean v0, Lcom/leanplum/Leanplum;->p:Z

    return v0
.end method

.method static synthetic i()V
    .locals 0

    .prologue
    .line 49
    invoke-static {}, Lcom/leanplum/Leanplum;->q()V

    return-void
.end method

.method public static isResourceSyncingEnabled()Z
    .locals 1

    .prologue
    .line 416
    invoke-static {}, Lcom/leanplum/g;->b()Z

    move-result v0

    return v0
.end method

.method public static isTestModeEnabled()Z
    .locals 1

    .prologue
    .line 2354
    sget-boolean v0, Lcom/leanplum/cu;->l:Z

    return v0
.end method

.method static synthetic j()Lcom/leanplum/cq;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/leanplum/Leanplum;->l:Lcom/leanplum/cq;

    return-object v0
.end method

.method static synthetic k()V
    .locals 0

    .prologue
    .line 49
    invoke-static {}, Lcom/leanplum/Leanplum;->u()V

    return-void
.end method

.method static synthetic l()V
    .locals 0

    .prologue
    .line 49
    invoke-static {}, Lcom/leanplum/Leanplum;->v()V

    return-void
.end method

.method private static m()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 872
    sget-object v1, Lcom/leanplum/Leanplum;->v:Ljava/lang/Object;

    monitor-enter v1

    .line 873
    :try_start_0
    sget-boolean v0, Lcom/leanplum/Leanplum;->u:Z

    if-eqz v0, :cond_0

    .line 874
    monitor-exit v1

    .line 884
    :goto_0
    return-void

    .line 876
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/leanplum/Leanplum;->u:Z

    .line 877
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 878
    sget-boolean v0, Lcom/leanplum/cu;->k:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/leanplum/cu;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 879
    new-instance v0, Lcom/leanplum/bj;

    invoke-direct {v0}, Lcom/leanplum/bj;-><init>()V

    .line 881
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "start"

    aput-object v2, v0, v1

    const-string/jumbo v1, "resume"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    invoke-static {v0, v3, v1, v3, v3}, Lcom/leanplum/Leanplum;->a([Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/leanplum/cp;)V

    .line 883
    invoke-static {}, Lcom/leanplum/Leanplum;->t()V

    goto :goto_0

    .line 877
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static n()V
    .locals 2

    .prologue
    .line 1029
    const-string/jumbo v0, "pauseSession"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/leanplum/y;->b(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leanplum/y;->j()V

    .line 3095
    sget-object v1, Lcom/leanplum/Leanplum;->x:Ljava/lang/Object;

    monitor-enter v1

    .line 3096
    :try_start_0
    sget-object v0, Lcom/leanplum/Leanplum;->w:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 3097
    sget-object v0, Lcom/leanplum/Leanplum;->w:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 3099
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static newsfeed()Lcom/leanplum/Newsfeed;
    .locals 1

    .prologue
    .line 1150
    invoke-static {}, Lcom/leanplum/Newsfeed;->a()Lcom/leanplum/Newsfeed;

    move-result-object v0

    return-object v0
.end method

.method private static o()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1064
    const-string/jumbo v0, "resumeSession"

    invoke-static {v0, v2}, Lcom/leanplum/y;->b(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/y;

    move-result-object v0

    .line 1065
    sget-boolean v1, Lcom/leanplum/Leanplum;->c:Z

    if-eqz v1, :cond_0

    .line 1066
    const/4 v1, 0x0

    sput-boolean v1, Lcom/leanplum/Leanplum;->c:Z

    .line 1067
    invoke-virtual {v0}, Lcom/leanplum/y;->j()V

    .line 3103
    :goto_0
    invoke-static {}, Lcom/leanplum/Leanplum;->p()V

    .line 1074
    return-void

    .line 1069
    :cond_0
    invoke-virtual {v0}, Lcom/leanplum/y;->h()V

    .line 1070
    const-string/jumbo v0, "resume"

    const/4 v1, 0x3

    invoke-static {v0, v2, v1, v2, v2}, Lcom/leanplum/Leanplum;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/leanplum/cp;)V

    goto :goto_0
.end method

.method public static varargs objectForKeyPath([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2385
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    .line 2386
    :cond_0
    const-string/jumbo v1, "Leanplum"

    const-string/jumbo v2, "objectForKeyPath - No components parameter provided."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2393
    :goto_0
    return-object v0

    .line 2390
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/leanplum/cg;->a([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 2391
    :catch_0
    move-exception v1

    .line 2392
    invoke-static {v1}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static objectForKeyPathComponents([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2403
    if-eqz p0, :cond_0

    array-length v1, p0

    if-nez v1, :cond_1

    .line 2404
    :cond_0
    const-string/jumbo v1, "Leanplum"

    const-string/jumbo v2, "objectForKeyPathComponents - Invalid pathComponents parameter provided (null or empty)."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    :goto_0
    return-object v0

    .line 2409
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/leanplum/cg;->a([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 2410
    :catch_0
    move-exception v1

    .line 2411
    invoke-static {v1}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static onAction(Ljava/lang/String;Lcom/leanplum/callbacks/ActionCallback;)V
    .locals 2

    .prologue
    .line 1462
    if-nez p0, :cond_0

    .line 1463
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "onAction - Invalid actionName parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    :goto_0
    return-void

    .line 1466
    :cond_0
    if-nez p1, :cond_1

    .line 1467
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "onAction - Invalid handler parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1471
    :cond_1
    sget-object v0, Lcom/leanplum/Leanplum;->i:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1472
    if-nez v0, :cond_2

    .line 1473
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1474
    sget-object v1, Lcom/leanplum/Leanplum;->i:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1476
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static p()V
    .locals 8

    .prologue
    .line 1080
    sget-object v7, Lcom/leanplum/Leanplum;->x:Ljava/lang/Object;

    monitor-enter v7

    .line 1081
    :try_start_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 1082
    sput-object v0, Lcom/leanplum/Leanplum;->w:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/leanplum/l;

    invoke-direct {v1}, Lcom/leanplum/l;-><init>()V

    const-wide/16 v2, 0xf

    const-wide/16 v4, 0xf

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 1091
    monitor-exit v7

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static pathForResource(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2370
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2371
    const-string/jumbo v1, "Leanplum"

    const-string/jumbo v2, "pathForResource - Empty filename parameter provided."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2376
    :cond_0
    :goto_0
    return-object v0

    .line 2375
    :cond_1
    invoke-static {p0, p0}, Lcom/leanplum/Var;->defineFile(Ljava/lang/String;Ljava/lang/String;)Lcom/leanplum/Var;

    move-result-object v1

    .line 2376
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/leanplum/Var;->fileValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static pauseState()V
    .locals 2

    .prologue
    .line 2200
    invoke-static {}, Lcom/leanplum/cu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2226
    :goto_0
    return-void

    .line 2203
    :cond_0
    sget-boolean v0, Lcom/leanplum/Leanplum;->a:Z

    if-nez v0, :cond_1

    .line 2204
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "You cannot call pauseState before calling start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2209
    :cond_1
    :try_start_0
    sget-boolean v0, Lcom/leanplum/Leanplum;->m:Z

    if-eqz v0, :cond_2

    .line 2210
    invoke-static {}, Lcom/leanplum/Leanplum;->u()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2223
    :catch_0
    move-exception v0

    .line 2224
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2212
    :cond_2
    :try_start_1
    new-instance v0, Lcom/leanplum/a;

    invoke-direct {v0}, Lcom/leanplum/a;-><init>()V

    invoke-static {v0}, Lcom/leanplum/Leanplum;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static q()V
    .locals 1

    .prologue
    .line 1185
    sget-boolean v0, Lcom/leanplum/Leanplum;->p:Z

    if-nez v0, :cond_0

    .line 1186
    const/4 v0, 0x1

    sput-boolean v0, Lcom/leanplum/Leanplum;->p:Z

    .line 1188
    :cond_0
    return-void
.end method

.method private static r()V
    .locals 4

    .prologue
    .line 1254
    sget-object v1, Lcom/leanplum/Leanplum;->e:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1255
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/leanplum/Leanplum;->m:Z

    .line 1256
    sget-object v0, Lcom/leanplum/Leanplum;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1257
    invoke-static {}, Lcom/leanplum/m;->a()Lcom/leanplum/m;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/leanplum/m;->a(Ljava/lang/Runnable;)Ljava/lang/Boolean;

    goto :goto_0

    .line 1260
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1259
    :cond_0
    :try_start_1
    sget-object v0, Lcom/leanplum/Leanplum;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1260
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public static removeOnceVariablesChangedAndNoDownloadsPendingHandler(Lcom/leanplum/callbacks/VariablesChangedCallback;)V
    .locals 2

    .prologue
    .line 1368
    if-nez p0, :cond_0

    .line 1369
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "removeOnceVariablesChangedAndNoDownloadsPendingHandler - Invalid handler parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    :goto_0
    return-void

    .line 1374
    :cond_0
    sget-object v1, Lcom/leanplum/Leanplum;->h:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1375
    :try_start_0
    sget-object v0, Lcom/leanplum/Leanplum;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1376
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static removeStartResponseHandler(Lcom/leanplum/callbacks/StartCallback;)V
    .locals 2

    .prologue
    .line 1218
    if-nez p0, :cond_0

    .line 1219
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "removeStartResponseHandler - Invalid handler parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    :goto_0
    return-void

    .line 1223
    :cond_0
    sget-object v1, Lcom/leanplum/Leanplum;->d:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1224
    :try_start_0
    sget-object v0, Lcom/leanplum/Leanplum;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1225
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static removeVariablesChangedAndNoDownloadsPendingHandler(Lcom/leanplum/callbacks/VariablesChangedCallback;)V
    .locals 2

    .prologue
    .line 1330
    if-nez p0, :cond_0

    .line 1331
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "removeVariablesChangedAndNoDownloadsPendingHandler - Invalid handler parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    :goto_0
    return-void

    .line 1336
    :cond_0
    sget-object v1, Lcom/leanplum/Leanplum;->g:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1337
    :try_start_0
    sget-object v0, Lcom/leanplum/Leanplum;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1338
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static removeVariablesChangedHandler(Lcom/leanplum/callbacks/VariablesChangedCallback;)V
    .locals 2

    .prologue
    .line 1286
    if-nez p0, :cond_0

    .line 1287
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "removeVariablesChangedHandler - Invalid handler parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    :goto_0
    return-void

    .line 1291
    :cond_0
    sget-object v1, Lcom/leanplum/Leanplum;->f:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1292
    :try_start_0
    sget-object v0, Lcom/leanplum/Leanplum;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1293
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static resumeState()V
    .locals 2

    .prologue
    .line 2236
    invoke-static {}, Lcom/leanplum/cu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2262
    :goto_0
    return-void

    .line 2239
    :cond_0
    sget-boolean v0, Lcom/leanplum/Leanplum;->a:Z

    if-nez v0, :cond_1

    .line 2240
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "You cannot call resumeState before calling start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2245
    :cond_1
    :try_start_0
    sget-boolean v0, Lcom/leanplum/Leanplum;->m:Z

    if-eqz v0, :cond_2

    .line 2246
    invoke-static {}, Lcom/leanplum/Leanplum;->v()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2259
    :catch_0
    move-exception v0

    .line 2260
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2248
    :cond_2
    :try_start_1
    new-instance v0, Lcom/leanplum/b;

    invoke-direct {v0}, Lcom/leanplum/b;-><init>()V

    invoke-static {v0}, Lcom/leanplum/Leanplum;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static s()V
    .locals 4

    .prologue
    .line 1297
    sget-object v1, Lcom/leanplum/Leanplum;->f:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1298
    :try_start_0
    sget-object v0, Lcom/leanplum/Leanplum;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leanplum/callbacks/VariablesChangedCallback;

    .line 1299
    invoke-static {}, Lcom/leanplum/m;->a()Lcom/leanplum/m;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/leanplum/m;->a(Ljava/lang/Runnable;)Ljava/lang/Boolean;

    goto :goto_0

    .line 1301
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public static setApiConnectionSettings(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 137
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "setApiConnectionSettings - Empty hostname parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "setApiConnectionSettings - Empty servletName parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    :cond_1
    sput-object p0, Lcom/leanplum/cu;->a:Ljava/lang/String;

    .line 147
    sput-object p1, Lcom/leanplum/cu;->q:Ljava/lang/String;

    .line 148
    sput-boolean p2, Lcom/leanplum/cu;->d:Z

    goto :goto_0
.end method

.method public static setAppIdForDevelopmentMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 235
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "setAppIdForDevelopmentMode - Empty appId parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "setAppIdForDevelopmentMode - Empty accessKey parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 244
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/leanplum/cu;->k:Z

    .line 245
    invoke-static {p0, p1}, Lcom/leanplum/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setAppIdForProductionMode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 255
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "setAppIdForProductionMode - Empty appId parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "setAppIdForProductionMode - Empty accessKey parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 264
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/leanplum/cu;->k:Z

    .line 265
    invoke-static {p0, p1}, Lcom/leanplum/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 298
    if-nez p0, :cond_0

    .line 299
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "setApplicationContext - Null context parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    sput-object p0, Lcom/leanplum/Leanplum;->y:Landroid/content/Context;

    .line 303
    return-void
.end method

.method public static setCanDownloadContentMidSessionInProductionMode(Z)V
    .locals 0

    .prologue
    .line 225
    sput-boolean p0, Lcom/leanplum/cu;->o:Z

    .line 226
    return-void
.end method

.method public static setDeviceId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 286
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "setDeviceId - Empty deviceId parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_0
    sput-object p0, Lcom/leanplum/Leanplum;->r:Ljava/lang/String;

    .line 291
    const/4 v0, 0x1

    sput-boolean v0, Lcom/leanplum/Leanplum;->s:Z

    .line 292
    return-void
.end method

.method public static setDeviceIdMode(Lcom/leanplum/LeanplumDeviceIdMode;)V
    .locals 2

    .prologue
    .line 272
    if-nez p0, :cond_0

    .line 273
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "setDeviceIdMode - Invalid mode parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    sput-object p0, Lcom/leanplum/Leanplum;->q:Lcom/leanplum/LeanplumDeviceIdMode;

    .line 278
    const/4 v0, 0x1

    sput-boolean v0, Lcom/leanplum/Leanplum;->s:Z

    goto :goto_0
.end method

.method public static setFileHashingEnabledInDevelopmentMode(Z)V
    .locals 0

    .prologue
    .line 180
    sput-boolean p0, Lcom/leanplum/cu;->j:Z

    .line 181
    return-void
.end method

.method public static setFileUploadingEnabledInDevelopmentMode(Z)V
    .locals 0

    .prologue
    .line 189
    sput-boolean p0, Lcom/leanplum/cu;->n:Z

    .line 190
    return-void
.end method

.method public static setIsTestModeEnabled(Z)V
    .locals 0

    .prologue
    .line 2362
    sput-boolean p0, Lcom/leanplum/cu;->l:Z

    .line 2363
    return-void
.end method

.method public static setNetworkTimeout(II)V
    .locals 2

    .prologue
    .line 204
    if-gez p0, :cond_0

    .line 205
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "setNetworkTimeout - Invalid seconds parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :goto_0
    return-void

    .line 208
    :cond_0
    if-gez p1, :cond_1

    .line 209
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "setNetworkTimeout - Invalid downloadSeconds parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 213
    :cond_1
    sput p0, Lcom/leanplum/cu;->e:I

    .line 214
    sput p1, Lcom/leanplum/cu;->f:I

    goto :goto_0
.end method

.method public static setRegisterDeviceHandler(Lcom/leanplum/callbacks/RegisterDeviceCallback;Lcom/leanplum/callbacks/RegisterDeviceFinishedCallback;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 324
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 325
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "setRegisterDeviceHandler - Invalid handler parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_0
    sput-object p0, Lcom/leanplum/Leanplum;->j:Lcom/leanplum/callbacks/RegisterDeviceCallback;

    .line 329
    sput-object p1, Lcom/leanplum/Leanplum;->k:Lcom/leanplum/callbacks/RegisterDeviceFinishedCallback;

    .line 330
    return-void
.end method

.method public static setSocketConnectionSettings(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 157
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "setSocketConnectionSettings - Empty hostName parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_0
    return-void

    .line 161
    :cond_0
    if-lez p1, :cond_1

    const v0, 0xffff

    if-le p1, v0, :cond_2

    .line 162
    :cond_1
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "setSocketConnectionSettings - Invalid port parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 166
    :cond_2
    sput-object p0, Lcom/leanplum/cu;->b:Ljava/lang/String;

    .line 167
    sput p1, Lcom/leanplum/cu;->c:I

    goto :goto_0
.end method

.method public static setTrafficSourceInfo(Ljava/util/Map;)V
    .locals 3
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
    .line 1783
    invoke-static {}, Lcom/leanplum/cu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1816
    :goto_0
    return-void

    .line 1786
    :cond_0
    sget-boolean v0, Lcom/leanplum/Leanplum;->a:Z

    if-nez v0, :cond_1

    .line 1787
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "You cannot call setTrafficSourceInfo before calling start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1790
    :cond_1
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1791
    :cond_2
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "setTrafficSourceInfo - Invalid info parameter provided (null or empty)."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1796
    :cond_3
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1797
    const-string/jumbo v1, "info"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/leanplum/Leanplum;->a(Ljava/util/Map;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v1

    .line 1798
    const-string/jumbo v2, "trafficSource"

    invoke-static {v1}, Lcom/leanplum/co;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1799
    sget-boolean v1, Lcom/leanplum/Leanplum;->m:Z

    if-eqz v1, :cond_4

    .line 1800
    invoke-static {v0}, Lcom/leanplum/Leanplum;->b(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1813
    :catch_0
    move-exception v0

    .line 1814
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1802
    :cond_4
    :try_start_1
    new-instance v1, Lcom/leanplum/di;

    invoke-direct {v1, v0}, Lcom/leanplum/di;-><init>(Ljava/util/HashMap;)V

    invoke-static {v1}, Lcom/leanplum/Leanplum;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static setUserAttributes(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 1654
    invoke-static {}, Lcom/leanplum/cu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1689
    :goto_0
    return-void

    .line 1657
    :cond_0
    sget-boolean v0, Lcom/leanplum/Leanplum;->a:Z

    if-nez v0, :cond_1

    .line 1658
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "You cannot call setUserAttributes before calling start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1662
    :cond_1
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1663
    if-eqz p0, :cond_2

    .line 1664
    const-string/jumbo v1, "newUserId"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1666
    :cond_2
    if-eqz p1, :cond_3

    .line 1667
    const-string/jumbo v1, "userAttributes"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/leanplum/Leanplum;->a(Ljava/util/Map;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v1

    .line 1668
    const-string/jumbo v2, "userAttributes"

    invoke-static {v1}, Lcom/leanplum/co;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1669
    sget-object v2, Lcom/leanplum/Leanplum;->z:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1672
    :cond_3
    sget-boolean v1, Lcom/leanplum/Leanplum;->m:Z

    if-eqz v1, :cond_4

    .line 1673
    invoke-static {p0, v0}, Lcom/leanplum/Leanplum;->b(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1686
    :catch_0
    move-exception v0

    .line 1687
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1675
    :cond_4
    :try_start_1
    new-instance v1, Lcom/leanplum/dg;

    invoke-direct {v1, p0, v0}, Lcom/leanplum/dg;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-static {v1}, Lcom/leanplum/Leanplum;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static setUserAttributes(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1744
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1745
    :cond_0
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "setUserAttributes - Invalid userAttributes parameter provided (null or empty)."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    :goto_0
    return-void

    .line 1749
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/leanplum/Leanplum;->setUserAttributes(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1732
    if-nez p0, :cond_0

    .line 1733
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "setUserId - Invalid userId parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    :goto_0
    return-void

    .line 1737
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/leanplum/Leanplum;->setUserAttributes(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static start(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 425
    invoke-static {p0, v0, v0, v0, v0}, Lcom/leanplum/Leanplum;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/leanplum/callbacks/StartCallback;Ljava/lang/Boolean;)V

    .line 426
    return-void
.end method

.method public static start(Landroid/content/Context;Lcom/leanplum/callbacks/StartCallback;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 434
    invoke-static {p0, v0, v0, p1, v0}, Lcom/leanplum/Leanplum;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/leanplum/callbacks/StartCallback;Ljava/lang/Boolean;)V

    .line 435
    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 452
    invoke-static {p0, p1, v0, v0, v0}, Lcom/leanplum/Leanplum;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/leanplum/callbacks/StartCallback;Ljava/lang/Boolean;)V

    .line 453
    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;Lcom/leanplum/callbacks/StartCallback;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 461
    invoke-static {p0, p1, v0, p2, v0}, Lcom/leanplum/Leanplum;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/leanplum/callbacks/StartCallback;Ljava/lang/Boolean;)V

    .line 462
    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 470
    invoke-static {p0, p1, p2, v0, v0}, Lcom/leanplum/Leanplum;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/leanplum/callbacks/StartCallback;Ljava/lang/Boolean;)V

    .line 471
    return-void
.end method

.method public static declared-synchronized start(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/leanplum/callbacks/StartCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/leanplum/callbacks/StartCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 480
    const-class v0, Lcom/leanplum/Leanplum;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, p3, v1}, Lcom/leanplum/Leanplum;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/leanplum/callbacks/StartCallback;Ljava/lang/Boolean;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    monitor-exit v0

    return-void

    .line 480
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static start(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 443
    invoke-static {p0, v0, p1, v0, v0}, Lcom/leanplum/Leanplum;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lcom/leanplum/callbacks/StartCallback;Ljava/lang/Boolean;)V

    .line 444
    return-void
.end method

.method public static syncResources()V
    .locals 3

    .prologue
    .line 339
    invoke-static {}, Lcom/leanplum/cu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    :goto_0
    return-void

    .line 343
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, v1, v2}, Lcom/leanplum/g;->a(Ljava/util/List;Ljava/util/List;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 344
    :catch_0
    move-exception v0

    .line 345
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static syncResources(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 382
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/leanplum/g;->a(Ljava/util/List;Ljava/util/List;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :goto_0
    return-void

    .line 383
    :catch_0
    move-exception v0

    .line 384
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static syncResourcesAsync()V
    .locals 3

    .prologue
    .line 354
    invoke-static {}, Lcom/leanplum/cu;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    :goto_0
    return-void

    .line 358
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {v0, v1, v2}, Lcom/leanplum/g;->a(Ljava/util/List;Ljava/util/List;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static syncResourcesAsync(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 406
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/leanplum/g;->a(Ljava/util/List;Ljava/util/List;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :goto_0
    return-void

    .line 407
    :catch_0
    move-exception v0

    .line 408
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static t()V
    .locals 9

    .prologue
    .line 1704
    const/4 v0, 0x0

    .line 1705
    sget-object v1, Lcom/leanplum/Leanplum;->z:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1706
    invoke-static {}, Lcom/leanplum/cg;->n()Ljava/util/Map;

    move-result-object v4

    .line 1707
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v1

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1708
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1709
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1710
    if-nez v6, :cond_1

    if-nez v7, :cond_2

    :cond_1
    if-eqz v6, :cond_0

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1712
    :cond_2
    new-instance v2, Lcom/leanplum/cp;

    invoke-direct {v2}, Lcom/leanplum/cp;-><init>()V

    .line 1713
    iput-object v6, v2, Lcom/leanplum/cp;->b:Ljava/lang/Object;

    .line 1714
    iput-object v7, v2, Lcom/leanplum/cp;->c:Ljava/lang/Object;

    .line 1715
    invoke-interface {v4, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1716
    const-string/jumbo v6, "userAttribute"

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static {v6, v1, v7, v8, v2}, Lcom/leanplum/Leanplum;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/leanplum/cp;)V

    .line 1718
    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    .line 1721
    goto :goto_0

    .line 1722
    :cond_4
    sget-object v0, Lcom/leanplum/Leanplum;->z:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 1723
    if-eqz v1, :cond_5

    .line 1724
    invoke-static {}, Lcom/leanplum/cg;->o()V

    .line 1726
    :cond_5
    return-void
.end method

.method public static track(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2005
    const-wide/16 v0, 0x0

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/leanplum/Leanplum;->track(Ljava/lang/String;DLjava/lang/String;Ljava/util/Map;)V

    .line 2006
    return-void
.end method

.method public static track(Ljava/lang/String;D)V
    .locals 3

    .prologue
    .line 2020
    const-string/jumbo v0, ""

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/leanplum/Leanplum;->track(Ljava/lang/String;DLjava/lang/String;Ljava/util/Map;)V

    .line 2021
    return-void
.end method

.method public static track(Ljava/lang/String;DLjava/lang/String;)V
    .locals 1

    .prologue
    .line 2082
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/leanplum/Leanplum;->track(Ljava/lang/String;DLjava/lang/String;Ljava/util/Map;)V

    .line 2083
    return-void
.end method

.method public static track(Ljava/lang/String;DLjava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 1841
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lcom/leanplum/Leanplum;->a(Ljava/lang/String;DLjava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 1842
    return-void
.end method

.method public static track(Ljava/lang/String;DLjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 2065
    const-string/jumbo v0, ""

    invoke-static {p0, p1, p2, v0, p3}, Lcom/leanplum/Leanplum;->track(Ljava/lang/String;DLjava/lang/String;Ljava/util/Map;)V

    .line 2066
    return-void
.end method

.method public static track(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2034
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Lcom/leanplum/Leanplum;->track(Ljava/lang/String;DLjava/lang/String;Ljava/util/Map;)V

    .line 2035
    return-void
.end method

.method public static track(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 2048
    const-wide/16 v0, 0x0

    const-string/jumbo v2, ""

    invoke-static {p0, v0, v1, v2, p1}, Lcom/leanplum/Leanplum;->track(Ljava/lang/String;DLjava/lang/String;Ljava/util/Map;)V

    .line 2049
    return-void
.end method

.method public static trackGooglePlayPurchase(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 1943
    const-string/jumbo v0, "Purchase"

    const/4 v7, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v7}, Lcom/leanplum/Leanplum;->trackGooglePlayPurchase(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1945
    return-void
.end method

.method public static trackGooglePlayPurchase(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 1958
    const-string/jumbo v0, "Purchase"

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/leanplum/Leanplum;->trackGooglePlayPurchase(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1960
    return-void
.end method

.method public static trackGooglePlayPurchase(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 1976
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1977
    const-string/jumbo v0, "Leanplum"

    const-string/jumbo v1, "trackGooglePlayPurchase - Empty eventName parameter provided."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1981
    const-string/jumbo v0, "googlePlayPurchaseData"

    invoke-interface {v6, v0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1982
    const-string/jumbo v0, "googlePlayPurchaseDataSignature"

    invoke-interface {v6, v0, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1983
    const-string/jumbo v0, "currencyCode"

    invoke-interface {v6, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1986
    if-nez p7, :cond_1

    .line 1987
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1991
    :goto_0
    const-string/jumbo v0, "item"

    invoke-interface {v5, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1993
    long-to-double v0, p2

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double v2, v0, v2

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/leanplum/Leanplum;->a(Ljava/lang/String;DLjava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 1994
    return-void

    .line 1989
    :cond_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, p7}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0
.end method

.method private static u()V
    .locals 2

    .prologue
    .line 2229
    const-string/jumbo v0, "pauseState"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1}, Lcom/leanplum/y;->b(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leanplum/y;->g()V

    .line 2230
    return-void
.end method

.method private static v()V
    .locals 2

    .prologue
    .line 2265
    const-string/jumbo v0, "resumeState"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0, v1}, Lcom/leanplum/y;->b(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leanplum/y;->g()V

    .line 2266
    return-void
.end method

.method public static variants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 2421
    invoke-static {}, Lcom/leanplum/cg;->k()Ljava/util/List;

    move-result-object v0

    .line 2422
    if-nez v0, :cond_0

    .line 2423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2425
    :cond_0
    return-object v0
.end method
