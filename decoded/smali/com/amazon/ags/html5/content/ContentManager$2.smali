.class Lcom/amazon/ags/html5/content/ContentManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/amazon/ags/html5/content/ContentManager;

.field final synthetic val$manifestEndpoint:Ljava/lang/String;

.field final synthetic val$postUpgradeCurrentContentVersion:Lcom/amazon/ags/html5/content/ContentVersion;


# direct methods
.method constructor <init>(Lcom/amazon/ags/html5/content/ContentManager;Ljava/lang/String;Lcom/amazon/ags/html5/content/ContentVersion;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/amazon/ags/html5/content/ContentManager$2;->this$0:Lcom/amazon/ags/html5/content/ContentManager;

    iput-object p2, p0, Lcom/amazon/ags/html5/content/ContentManager$2;->val$manifestEndpoint:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/ags/html5/content/ContentManager$2;->val$postUpgradeCurrentContentVersion:Lcom/amazon/ags/html5/content/ContentVersion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 242
    const/4 v1, 0x0

    .line 244
    iget-object v0, p0, Lcom/amazon/ags/html5/content/ContentManager$2;->this$0:Lcom/amazon/ags/html5/content/ContentManager;

    iget-object v3, p0, Lcom/amazon/ags/html5/content/ContentManager$2;->val$manifestEndpoint:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/amazon/ags/html5/content/ContentManager;->access$500(Lcom/amazon/ags/html5/content/ContentManager;ZLjava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 247
    invoke-static {}, Lcom/amazon/ags/VersionInfo;->getSDKVersion()Lcom/amazon/ags/VersionInfo;

    move-result-object v3

    .line 248
    invoke-virtual {v3}, Lcom/amazon/ags/VersionInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ags/html5/content/ContentManifestEntry;

    .line 249
    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0}, Lcom/amazon/ags/html5/content/ContentManifestEntry;->getVersion()Lcom/amazon/ags/html5/content/ContentVersion;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/ags/html5/content/ContentManager$2;->val$postUpgradeCurrentContentVersion:Lcom/amazon/ags/html5/content/ContentVersion;

    invoke-virtual {v3, v4}, Lcom/amazon/ags/html5/content/ContentVersion;->compareTo(Lcom/amazon/ags/html5/content/ContentVersion;)I

    move-result v3

    if-lez v3, :cond_0

    move v1, v2

    .line 257
    :cond_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 259
    iget-object v1, p0, Lcom/amazon/ags/html5/content/ContentManager$2;->this$0:Lcom/amazon/ags/html5/content/ContentManager;

    invoke-virtual {v0}, Lcom/amazon/ags/html5/content/ContentManifestEntry;->getContentURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/amazon/ags/html5/content/ContentManager;->access$600()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/amazon/ags/html5/content/ContentManifestEntry;->getChecksum()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/amazon/ags/html5/content/ContentManager;->access$700(Lcom/amazon/ags/html5/content/ContentManager;ZLjava/lang/String;JLjava/lang/String;)Z

    .line 261
    :cond_1
    return-void
.end method
