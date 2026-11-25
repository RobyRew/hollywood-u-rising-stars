.class public Lcom/leanplum/LeanplumApplication;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field private static a:Lcom/leanplum/LeanplumApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/leanplum/LeanplumApplication;->a:Lcom/leanplum/LeanplumApplication;

    return-object v0
.end method

.method public static getInstance()Lcom/leanplum/LeanplumApplication;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/leanplum/LeanplumApplication;->a:Lcom/leanplum/LeanplumApplication;

    return-object v0
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Lcom/leanplum/cu;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/leanplum/Leanplum;->isResourceSyncingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 37
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/leanplum/LeanplumResources;

    invoke-super {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/leanplum/LeanplumResources;-><init>(Landroid/content/res/Resources;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 28
    sput-object p0, Lcom/leanplum/LeanplumApplication;->a:Lcom/leanplum/LeanplumApplication;

    .line 29
    invoke-static {p0}, Lcom/leanplum/LeanplumActivityHelper;->enableLifecycleCallbacks(Landroid/app/Application;)V

    .line 30
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/leanplum/annotations/Parser;->parseVariables([Ljava/lang/Object;)V

    .line 32
    return-void
.end method
