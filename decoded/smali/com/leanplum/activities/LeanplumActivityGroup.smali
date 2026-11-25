.class public Lcom/leanplum/activities/LeanplumActivityGroup;
.super Landroid/app/ActivityGroup;
.source "SourceFile"


# instance fields
.field private a:Lcom/leanplum/LeanplumActivityHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    return-void
.end method

.method private a()Lcom/leanplum/LeanplumActivityHelper;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/leanplum/activities/LeanplumActivityGroup;->a:Lcom/leanplum/LeanplumActivityHelper;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/leanplum/LeanplumActivityHelper;

    invoke-direct {v0, p0}, Lcom/leanplum/LeanplumActivityHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/leanplum/activities/LeanplumActivityGroup;->a:Lcom/leanplum/LeanplumActivityHelper;

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/leanplum/activities/LeanplumActivityGroup;->a:Lcom/leanplum/LeanplumActivityHelper;

    return-object v0
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Lcom/leanplum/Leanplum;->isTestModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/leanplum/Leanplum;->isResourceSyncingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    :cond_0
    invoke-super {p0}, Landroid/app/ActivityGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 45
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/leanplum/activities/LeanplumActivityGroup;->a()Lcom/leanplum/LeanplumActivityHelper;

    move-result-object v0

    invoke-super {p0}, Landroid/app/ActivityGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leanplum/LeanplumActivityHelper;->getLeanplumResources(Landroid/content/res/Resources;)Lcom/leanplum/LeanplumResources;

    move-result-object v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 25
    invoke-direct {p0}, Lcom/leanplum/activities/LeanplumActivityGroup;->a()Lcom/leanplum/LeanplumActivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leanplum/LeanplumActivityHelper;->onPause()V

    .line 26
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 37
    invoke-direct {p0}, Lcom/leanplum/activities/LeanplumActivityGroup;->a()Lcom/leanplum/LeanplumActivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leanplum/LeanplumActivityHelper;->onResume()V

    .line 38
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStop()V

    .line 31
    invoke-direct {p0}, Lcom/leanplum/activities/LeanplumActivityGroup;->a()Lcom/leanplum/LeanplumActivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leanplum/LeanplumActivityHelper;->onStop()V

    .line 32
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/leanplum/Leanplum;->isTestModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/leanplum/Leanplum;->isResourceSyncingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->setContentView(I)V

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-direct {p0}, Lcom/leanplum/activities/LeanplumActivityGroup;->a()Lcom/leanplum/LeanplumActivityHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/leanplum/LeanplumActivityHelper;->setContentView(I)V

    goto :goto_0
.end method
