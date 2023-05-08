// Made with Blockbench 4.7.1
// Exported for Minecraft version 1.17 or later with Mojang mappings
// Paste this class into your mod and generate all required imports


public class marineuniform<T extends Entity> extends EntityModel<T> {
	// This layer location should be baked with EntityRendererProvider.Context in the entity renderer and passed into this model's constructor
	public static final ModelLayerLocation LAYER_LOCATION = new ModelLayerLocation(new ResourceLocation("modid", "marineuniform"), "main");
	private final ModelPart Body;
	private final ModelPart RightArm;
	private final ModelPart LeftArm;

	public marineuniform(ModelPart root) {
		this.Body = root.getChild("Body");
		this.RightArm = root.getChild("RightArm");
		this.LeftArm = root.getChild("LeftArm");
	}

	public static LayerDefinition createBodyLayer() {
		MeshDefinition meshdefinition = new MeshDefinition();
		PartDefinition partdefinition = meshdefinition.getRoot();

		PartDefinition Body = partdefinition.addOrReplaceChild("Body", CubeListBuilder.create().texOffs(0, 10).addBox(-4.0F, 2.5F, -2.4F, 8.0F, 9.5F, 0.4F, new CubeDeformation(0.0F))
		.texOffs(18, 21).addBox(1.0F, 0.0F, -2.4F, 3.0F, 2.5F, 0.4F, new CubeDeformation(0.0F))
		.texOffs(12, 20).addBox(-1.0F, 1.5F, -2.4F, 2.1F, 1.0F, 0.4F, new CubeDeformation(0.0F))
		.texOffs(12, 21).addBox(-4.0F, 0.0F, -2.4F, 3.0F, 2.5F, 0.4F, new CubeDeformation(0.0F))
		.texOffs(0, 0).addBox(-4.0F, 2.5F, 2.0F, 8.0F, 9.5F, 0.4F, new CubeDeformation(0.0F))
		.texOffs(16, 0).addBox(-4.0F, 0.0F, 2.0F, 8.0F, 2.5F, 0.4F, new CubeDeformation(0.0F)), PartPose.offset(0.0F, 0.0F, 0.0F));

		PartDefinition Body_r1 = Body.addOrReplaceChild("Body_r1", CubeListBuilder.create().texOffs(6, 20).addBox(-4.0F, -4.6F, -1.25F, 3.0F, 4.8F, 0.1F, new CubeDeformation(0.0F))
		.texOffs(0, 20).addBox(1.0F, -4.6F, -1.25F, 3.0F, 4.8F, 0.1F, new CubeDeformation(0.0F))
		.texOffs(19, 26).addBox(-1.0F, -1.6F, -1.25F, 2.0F, 1.8F, 0.1F, new CubeDeformation(0.0F)), PartPose.offsetAndRotation(0.0F, -1.25F, 2.2F, 1.5708F, 0.0F, 0.0F));

		PartDefinition Body_r2 = Body.addOrReplaceChild("Body_r2", CubeListBuilder.create().texOffs(16, 3).addBox(-2.0F, -4.25F, 7.4F, 4.0F, 8.5F, 0.4F, new CubeDeformation(0.0F)), PartPose.offsetAndRotation(-3.8F, 7.75F, 0.0F, 0.0F, 1.5708F, 0.0F));

		PartDefinition Body_r3 = Body.addOrReplaceChild("Body_r3", CubeListBuilder.create().texOffs(16, 12).addBox(-4.2F, -3.75F, 4.0F, 4.0F, 8.5F, 0.4F, new CubeDeformation(0.0F)), PartPose.offsetAndRotation(-8.0F, 7.25F, -2.2F, 0.0F, 1.5708F, 0.0F));

		PartDefinition colar = Body.addOrReplaceChild("colar", CubeListBuilder.create().texOffs(29, 13).addBox(2.0F, -24.1F, -2.6F, 1.0F, 1.1F, 0.2F, new CubeDeformation(0.0F))
		.texOffs(27, 17).addBox(1.0F, -24.1F, -2.6F, 1.0F, 1.1F, 0.2F, new CubeDeformation(0.0F))
		.texOffs(27, 17).addBox(3.0F, -24.1F, -2.6F, 0.2F, 1.1F, 0.2F, new CubeDeformation(0.0F))
		.texOffs(27, 17).addBox(-3.2F, -24.1F, -2.6F, 0.2F, 1.1F, 0.2F, new CubeDeformation(0.0F))
		.texOffs(0, 25).addBox(1.0F, -23.0F, -2.5F, 1.0F, 1.0F, 0.1F, new CubeDeformation(0.0F))
		.texOffs(2, 25).addBox(1.0F, -22.0F, -2.5F, 0.8F, 1.0F, 0.1F, new CubeDeformation(0.0F))
		.texOffs(6, 25).addBox(0.0F, -21.5F, -2.5F, 1.0F, 1.0F, 0.1F, new CubeDeformation(0.0F))
		.texOffs(24, 25).addBox(0.4F, -20.5F, -2.5F, 1.0F, 1.0F, 0.1F, new CubeDeformation(0.0F))
		.texOffs(8, 25).addBox(-1.0F, -21.5F, -2.5F, 1.0F, 1.0F, 0.1F, new CubeDeformation(0.0F))
		.texOffs(4, 25).addBox(-1.3F, -20.5F, -2.5F, 1.0F, 1.0F, 0.1F, new CubeDeformation(0.0F))
		.texOffs(10, 25).addBox(-1.8F, -22.0F, -2.5F, 0.8F, 1.0F, 0.1F, new CubeDeformation(0.0F))
		.texOffs(24, 25).addBox(-2.0F, -23.0F, -2.5F, 1.0F, 1.0F, 0.1F, new CubeDeformation(0.0F))
		.texOffs(26, 22).mirror().addBox(-2.0F, -24.1F, -2.6F, 1.0F, 1.1F, 0.2F, new CubeDeformation(0.0F)).mirror(false)
		.texOffs(26, 23).mirror().addBox(-1.0F, -23.3F, -2.6F, 0.4F, 0.8F, 0.2F, new CubeDeformation(0.0F)).mirror(false)
		.texOffs(26, 23).mirror().addBox(0.6F, -23.3F, -2.6F, 0.4F, 0.8F, 0.2F, new CubeDeformation(0.0F)).mirror(false)
		.texOffs(29, 30).mirror().addBox(-3.0F, -24.1F, -2.6F, 1.0F, 1.1F, 0.2F, new CubeDeformation(0.0F)).mirror(false), PartPose.offset(0.0F, 24.0F, 0.0F));

		PartDefinition RightArm = partdefinition.addOrReplaceChild("RightArm", CubeListBuilder.create().texOffs(16, 24).addBox(0.0F, -2.0F, 2.0F, 1.0F, 3.5F, 0.4F, new CubeDeformation(0.0F))
		.texOffs(14, 24).addBox(0.0F, -2.0F, -2.4F, 1.0F, 3.5F, 0.4F, new CubeDeformation(0.0F)), PartPose.offset(-5.0F, 2.0F, 0.0F));

		PartDefinition Body_r4 = RightArm.addOrReplaceChild("Body_r4", CubeListBuilder.create().texOffs(24, 7).addBox(-5.0F, -4.2F, -4.75F, 1.4F, 4.0F, 0.4F, new CubeDeformation(0.0F))
		.texOffs(24, 11).addBox(-5.0F, -4.6F, -1.25F, 1.0F, 4.8F, 0.1F, new CubeDeformation(0.0F)), PartPose.offsetAndRotation(5.0F, -3.25F, 2.2F, 1.5708F, 0.0F, 0.0F));

		PartDefinition LeftArm = partdefinition.addOrReplaceChild("LeftArm", CubeListBuilder.create().texOffs(18, 24).addBox(-1.0F, -2.0F, -2.4F, 1.0F, 3.5F, 0.4F, new CubeDeformation(0.0F))
		.texOffs(24, 16).addBox(-1.0F, -2.0F, 2.0F, 1.0F, 3.5F, 0.4F, new CubeDeformation(0.0F)), PartPose.offset(5.0F, 2.0F, 0.0F));

		PartDefinition Body_r5 = LeftArm.addOrReplaceChild("Body_r5", CubeListBuilder.create().texOffs(12, 24).addBox(4.0F, -4.6F, -1.25F, 1.0F, 4.8F, 0.1F, new CubeDeformation(0.0F))
		.texOffs(24, 3).addBox(3.6F, -4.2F, -4.75F, 1.4F, 4.0F, 0.4F, new CubeDeformation(0.0F)), PartPose.offsetAndRotation(-5.0F, -3.25F, 2.2F, 1.5708F, 0.0F, 0.0F));

		return LayerDefinition.create(meshdefinition, 32, 32);
	}

	@Override
	public void setupAnim(T entity, float limbSwing, float limbSwingAmount, float ageInTicks, float netHeadYaw, float headPitch) {

	}

	@Override
	public void renderToBuffer(PoseStack poseStack, VertexConsumer vertexConsumer, int packedLight, int packedOverlay, float red, float green, float blue, float alpha) {
		Body.render(poseStack, vertexConsumer, packedLight, packedOverlay, red, green, blue, alpha);
		RightArm.render(poseStack, vertexConsumer, packedLight, packedOverlay, red, green, blue, alpha);
		LeftArm.render(poseStack, vertexConsumer, packedLight, packedOverlay, red, green, blue, alpha);
	}
}