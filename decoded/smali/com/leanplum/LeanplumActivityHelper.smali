.class public Lcom/leanplum/LeanplumActivityHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Z

.field static b:Landroid/app/Activity;

.field private static c:Z

.field private static final g:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/leanplum/callbacks/VariablesChangedCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private d:Landroid/app/Activity;

.field private e:Lcom/leanplum/LeanplumResources;

.field private f:Lcom/leanplum/LeanplumInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/leanplum/LeanplumActivityHelper;->a:Z

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/leanplum/LeanplumActivityHelper;->g:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/leanplum/LeanplumActivityHelper;->d:Landroid/app/Activity;

    .line 48
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/leanplum/Leanplum;->setApplicationContext(Landroid/content/Context;)V

    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/leanplum/annotations/Parser;->parseVariables([Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method static synthetic a(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 25
    invoke-static {p0}, Lcom/leanplum/LeanplumActivityHelper;->e(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic b(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 25
    invoke-static {p0}, Lcom/leanplum/LeanplumActivityHelper;->d(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic c(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 2132
    const/4 v0, 0x1

    sput-boolean v0, Lcom/leanplum/LeanplumActivityHelper;->a:Z

    .line 25
    return-void
.end method

.method private static d(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 149
    const/4 v0, 0x0

    sput-boolean v0, Lcom/leanplum/LeanplumActivityHelper;->a:Z

    .line 150
    sput-object p0, Lcom/leanplum/LeanplumActivityHelper;->b:Landroid/app/Activity;

    .line 151
    sget-boolean v0, Lcom/leanplum/Leanplum;->b:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/leanplum/Leanplum;->c:Z

    if-eqz v0, :cond_1

    .line 152
    :cond_0
    invoke-static {}, Lcom/leanplum/Leanplum;->b()V

    .line 153
    invoke-static {}, Lcom/leanplum/cq;->b()Lcom/leanplum/bp;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_1

    .line 155
    invoke-interface {v0}, Lcom/leanplum/bp;->a()V

    .line 1231
    :cond_1
    sget-object v1, Lcom/leanplum/LeanplumActivityHelper;->g:Ljava/util/Queue;

    monitor-enter v1

    .line 1232
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    sget-object v2, Lcom/leanplum/LeanplumActivityHelper;->g:Ljava/util/Queue;

    invoke-direct {v0, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 1233
    sget-object v2, Lcom/leanplum/LeanplumActivityHelper;->g:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 1234
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1235
    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leanplum/callbacks/VariablesChangedCallback;

    .line 1236
    invoke-virtual {v0}, Lcom/leanplum/callbacks/VariablesChangedCallback;->variablesChanged()V

    goto :goto_0

    .line 1234
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 159
    :cond_2
    return-void
.end method

.method private static e(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 182
    sget-boolean v0, Lcom/leanplum/LeanplumActivityHelper;->a:Z

    if-eqz v0, :cond_0

    .line 183
    invoke-static {}, Lcom/leanplum/Leanplum;->a()V

    .line 184
    invoke-static {}, Lcom/leanplum/cq;->b()Lcom/leanplum/bp;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_0

    .line 186
    invoke-interface {v0}, Lcom/leanplum/bp;->a()V

    .line 189
    :cond_0
    sget-object v0, Lcom/leanplum/LeanplumActivityHelper;->b:Landroid/app/Activity;

    if-ne v0, p0, :cond_1

    .line 191
    const/4 v0, 0x0

    sput-object v0, Lcom/leanplum/LeanplumActivityHelper;->b:Landroid/app/Activity;

    .line 193
    :cond_1
    return-void
.end method

.method public static enableLifecycleCallbacks(Landroid/app/Application;)V
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/leanplum/Leanplum;->setApplicationContext(Landroid/content/Context;)V

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 101
    :goto_0
    return-void

    .line 67
    :cond_0
    new-instance v0, Lcom/leanplum/o;

    invoke-direct {v0}, Lcom/leanplum/o;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 100
    const/4 v0, 0x1

    sput-boolean v0, Lcom/leanplum/LeanplumActivityHelper;->c:Z

    goto :goto_0
.end method

.method public static getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/leanplum/LeanplumActivityHelper;->b:Landroid/app/Activity;

    return-object v0
.end method

.method public static queueActionUponActive(Lcom/leanplum/callbacks/VariablesChangedCallback;)V
    .locals 2

    .prologue
    .line 214
    :try_start_0
    sget-object v0, Lcom/leanplum/LeanplumActivityHelper;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/leanplum/LeanplumActivityHelper;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/leanplum/LeanplumActivityHelper;->a:Z

    if-nez v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/leanplum/callbacks/VariablesChangedCallback;->variablesChanged()V

    .line 224
    :goto_0
    return-void

    .line 217
    :cond_0
    sget-object v1, Lcom/leanplum/LeanplumActivityHelper;->g:Ljava/util/Queue;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :try_start_1
    sget-object v0, Lcom/leanplum/LeanplumActivityHelper;->g:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 219
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public getLeanplumResources()Lcom/leanplum/LeanplumResources;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/leanplum/LeanplumActivityHelper;->getLeanplumResources(Landroid/content/res/Resources;)Lcom/leanplum/LeanplumResources;

    move-result-object v0

    return-object v0
.end method

.method public getLeanplumResources(Landroid/content/res/Resources;)Lcom/leanplum/LeanplumResources;
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/leanplum/LeanplumActivityHelper;->e:Lcom/leanplum/LeanplumResources;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/leanplum/LeanplumActivityHelper;->e:Lcom/leanplum/LeanplumResources;

    .line 118
    :goto_0
    return-object v0

    .line 111
    :cond_0
    if-nez p1, :cond_2

    .line 112
    iget-object v0, p0, Lcom/leanplum/LeanplumActivityHelper;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 114
    :goto_1
    instance-of v1, v0, Lcom/leanplum/LeanplumResources;

    if-eqz v1, :cond_1

    .line 115
    check-cast v0, Lcom/leanplum/LeanplumResources;

    goto :goto_0

    .line 117
    :cond_1
    new-instance v1, Lcom/leanplum/LeanplumResources;

    invoke-direct {v1, v0}, Lcom/leanplum/LeanplumResources;-><init>(Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/leanplum/LeanplumActivityHelper;->e:Lcom/leanplum/LeanplumResources;

    .line 118
    iget-object v0, p0, Lcom/leanplum/LeanplumActivityHelper;->e:Lcom/leanplum/LeanplumResources;

    goto :goto_0

    :cond_2
    move-object v0, p1

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 140
    :try_start_0
    sget-boolean v0, Lcom/leanplum/LeanplumActivityHelper;->c:Z

    if-nez v0, :cond_0

    .line 1132
    const/4 v0, 0x1

    sput-boolean v0, Lcom/leanplum/LeanplumActivityHelper;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 166
    :try_start_0
    sget-boolean v0, Lcom/leanplum/LeanplumActivityHelper;->c:Z

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/leanplum/LeanplumActivityHelper;->d:Landroid/app/Activity;

    invoke-static {v0}, Lcom/leanplum/LeanplumActivityHelper;->d(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 200
    :try_start_0
    sget-boolean v0, Lcom/leanplum/LeanplumActivityHelper;->c:Z

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/leanplum/LeanplumActivityHelper;->d:Landroid/app/Activity;

    invoke-static {v0}, Lcom/leanplum/LeanplumActivityHelper;->e(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    invoke-static {v0}, Lcom/leanplum/x;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setContentView(I)V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/leanplum/LeanplumActivityHelper;->f:Lcom/leanplum/LeanplumInflater;

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/leanplum/LeanplumActivityHelper;->d:Landroid/app/Activity;

    invoke-static {v0}, Lcom/leanplum/LeanplumInflater;->from(Landroid/content/Context;)Lcom/leanplum/LeanplumInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/leanplum/LeanplumActivityHelper;->f:Lcom/leanplum/LeanplumInflater;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/leanplum/LeanplumActivityHelper;->d:Landroid/app/Activity;

    iget-object v1, p0, Lcom/leanplum/LeanplumActivityHelper;->f:Lcom/leanplum/LeanplumInflater;

    invoke-virtual {v1, p1}, Lcom/leanplum/LeanplumInflater;->inflate(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 129
    return-void
.end method
